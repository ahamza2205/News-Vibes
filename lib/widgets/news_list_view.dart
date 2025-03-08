import 'package:flutter/material.dart';
import 'package:news_vibes/models/articale_model.dart';
import 'package:news_vibes/services/news_services.dart';
import 'package:news_vibes/widgets/News_Tile.dart';

class NewListView extends StatefulWidget {
  const NewListView({
    super.key,
  });

  @override
  State<NewListView> createState() => _NewListViewState();
}

class _NewListViewState extends State<NewListView> {
  List<ArticaleModel> articles = [];
  @override
  void initState() {
    super.initState();

    getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    articles = await NewsServices().getNews();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: articles.length,
          (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: NewsTile(
            articaleModel: articles[index],
          ),
        );
      }),
    );
  }
}
