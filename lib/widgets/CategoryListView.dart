import 'package:flutter/material.dart';
import 'package:news_vibes/widgets/CategoryCard.dart';

class Category_List_View extends StatelessWidget {
  const Category_List_View({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, index) {
        return CategoryCard(imagePath: 'assets/sports.avif', title: 'Sports');
      },
    );
  }
}
