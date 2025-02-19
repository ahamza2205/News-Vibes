import 'package:flutter/material.dart';
import 'package:news_vibes/views/home_view.dart';

void main() {
  runApp(NewsVibes());
}

class NewsVibes extends StatelessWidget {
  const NewsVibes({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
