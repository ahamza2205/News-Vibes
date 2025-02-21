import 'package:flutter/material.dart';
import 'package:news_vibes/models/category_models.dart';
import 'package:news_vibes/widgets/CategoryCard.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    super.key,
  });

  final List<CategoryModels> categories = const [
    CategoryModels(image: 'assets/sports.avif', name: "Sports"),
    CategoryModels(image: 'assets/entertaiment.avif', name: "Entertaiment"),
    CategoryModels(image: 'assets/general.avif', name: "General"),
    CategoryModels(image: 'assets/health.avif', name: "Health"),
    CategoryModels(image: 'assets/science.avif', name: "Science"),
    CategoryModels(image: 'assets/technology.jpeg', name: "Technology"),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(
            catrgories: categories[index],
          );
        },
      ),
    );
  }
}
