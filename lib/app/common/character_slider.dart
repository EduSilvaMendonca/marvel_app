import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:marvel_app/app/core/constants/app_constants.dart';

import '../core/constants/app_colors.dart';
import '../models/characters_model.dart';
import '../repositories/characters_repository_impl.dart';
import 'character_card.dart';

class CharacterSlider extends StatefulWidget {
  const CharacterSlider({Key? key}) : super(key: key);

  @override
  _CharacterSliderState createState() => _CharacterSliderState();
}

class _CharacterSliderState extends State<CharacterSlider> {
  final characterRepository = CharactersRepositoryImpl();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: const IconThemeData(
            color: AppColors.primary,
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppConstants.homeBackground),
                fit: BoxFit.fill,
              ),
            ),
            child: UnconstrainedBox(
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: FutureBuilder<List<CharactersModel>>(
                    future: characterRepository.getCharacters(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        final charList = snapshot.data;
                        return CarouselSlider.builder(
                            options: CarouselOptions(
                              enableInfiniteScroll: false,
                              scrollDirection: Axis.horizontal,
                              viewportFraction: 0.6,
                              height: 400,
                              enlargeCenterPage: true,
                            ),
                            itemCount: charList!.length,
                            itemBuilder: (context, index, _) =>
                                CharacterCard(charList[index]));
                      }
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
