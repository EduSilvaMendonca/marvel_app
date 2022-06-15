import 'package:flutter/material.dart';
import 'package:marvel_app/app/core/constants/app_colors.dart';

import '../models/characters_model.dart';
import '../pages/character_page/character_page.dart';

class CharacterCard extends StatelessWidget {
  final CharactersModel hero;

  const CharacterCard(this.hero, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => CharacterPage(hero)));
      },
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
          bottomRight: Radius.circular(40),
        ),
        child: Container(
          decoration: const BoxDecoration(
            color: AppColors.backgroundColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Flexible(
                flex: 5,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Hero(
                    tag: hero.thumbnail.path,
                    child: Image.network(
                      [hero.thumbnail.path, hero.thumbnail.extension].join('.'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Container(
                height: 5,
                width: MediaQuery.of(context).size.width,
                color: AppColors.primary,
              ),
              Flexible(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        hero.name.toUpperCase(),
                        style: const TextStyle(
                          color: AppColors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
