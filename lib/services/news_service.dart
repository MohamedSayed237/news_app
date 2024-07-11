import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  NewsService(this.dio);
  final Dio dio;
  

  Future<List<ArticleModel>> getNews({required String category}) async {
    Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=15df9d239c4344538fb834a069897990&category=$category');

    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData['articles'];
    List<ArticleModel> articlesList = [];
    for (var article in articles) {
      ArticleModel articleModel = ArticleModel(
        image: article['urlToImage'],
        title: article['title'],
        subTitle: article['description'],
      );
      articlesList.add(articleModel);
    }
    return articlesList;
  }
}
