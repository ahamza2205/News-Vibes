import 'package:flutter/material.dart';
import 'package:news_vibes/widgets/News_Tile.dart';

class NewListView extends StatelessWidget {
  const NewListView({
    super.key,
  });
// wedget
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: 10, (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: const NewsTile(),
        );
      }),
    );
  }
}
