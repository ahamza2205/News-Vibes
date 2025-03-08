import 'package:flutter/material.dart';
import 'package:news_vibes/models/articale_model.dart';

// cached network image
class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articaleModel});

  final ArticaleModel articaleModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: articaleModel.image != null
              ? Image.network(
                  articaleModel.image!,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                )
              : Image.network(
                  'https://www.cafonline.com/media/0luhsyfr/al-ahlys-starting-eleven-players-pose-for-the-group-photo-prior-the-caf-champions-league-2nd-qualifications.jpg',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          'article title',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          'sub title the ditail of articl',
          maxLines: 2,
          style: const TextStyle(color: Colors.grey, fontSize: 14),
        )
      ],
    );
  }
}
