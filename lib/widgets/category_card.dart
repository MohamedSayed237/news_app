import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

import '../screens/category_screen.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.categories,
  });

  final CategoryModel categories;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryScreen(category: categories.categoryName,);
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: AssetImage(categories.image),
              fit: BoxFit.fill,
            ),
          ),
          height: 85,
          width: 160,
          child: Center(
              child: Text(
            categories.categoryName,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          )),
        ),
      ),
    );
  }
}
