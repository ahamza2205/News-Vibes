import 'package:flutter/material.dart';
import 'package:news_vibes/models/category_models.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.catrgories});

  final CategoryModels catrgories;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 4.0),
      child: Container(
        height: 120,
        width: 150,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(catrgories.image),
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Text(
            catrgories.name,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
