import 'package:flutter/material.dart';
import 'package:marvel_app/app/core/constants/app_styles.dart';

import '../../../models/characters_model.dart';

class NewsCard extends StatelessWidget {
  final Comics comics;

  const NewsCard(this.comics, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: comics.items.map((e) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              e.name,
              style: AppStyles.cardNameText,
            ),
          );
        }).toList(),
      ),
    );
  }
}
