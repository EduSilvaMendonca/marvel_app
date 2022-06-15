import 'package:flutter/material.dart';
import 'package:marvel_app/app/core/constants/app_colors.dart';
import 'package:marvel_app/app/core/constants/app_styles.dart';

import '../../models/characters_model.dart';
import 'widgets/news_card.dart';

class CharacterPage extends StatelessWidget {
  final CharactersModel hero;

  const CharacterPage(this.hero, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: AppColors.backgroundColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(
            color: AppColors.primary,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                child: Hero(
                  tag: hero.thumbnail.path,
                  child: Image.network(
                    [hero.thumbnail.path, hero.thumbnail.extension].join('.'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      hero.name.toUpperCase(),
                      style: const TextStyle(
                        color: AppColors.primary,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      hero.description,
                      style: const TextStyle(
                        color: AppColors.white,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Quadrinhos',
                      style: AppStyles.newsStyle,
                      textAlign: TextAlign.justify,
                    ),
                    NewsCard(hero.comics),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
