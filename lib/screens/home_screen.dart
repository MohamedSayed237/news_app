import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:news_app/models/category_model.dart';

import '../widgets/category_card.dart';
import '../widgets/category_list_view.dart';
import '../widgets/news_list_view.dart';
import '../widgets/news_list_view_builder.dart';
import '../widgets/news_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Row(mainAxisSize: MainAxisSize.min, children: [
          Text(
            'News',
            style: TextStyle(color: Colors.black),
          ),
          Text(
            'Colud',
            style: TextStyle(color: Colors.orange),
          ),
        ]),
      ),
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: CategoryListView(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 32,
            ),
          ),
          NewsListViewBuilder(category: 'general',),
        ],
      ),
    );
  }
}
