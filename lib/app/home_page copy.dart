import 'package:flutter/material.dart';

import 'common/character_slider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 2.5,
            child: Stack(
              children: <Widget>[
                Positioned.fill(
                  child: Image.asset(
                    'assets/images/background1.png',
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'assets/images/logo.png',
                          width: 140,
                          fit: BoxFit.fitWidth,
                        ),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 24, 16, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          'PERSONAGENS MARVEL',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Conheça os heróis da Marvel. Veja em quais histórias em quadrinho eles aparecem.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                Positioned.fill(
                  child: Image.asset(
                    'assets/images/background2.png',
                    fit: BoxFit.fill,
                  ),
                ),
                const CharacterSlider(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
