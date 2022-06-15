import 'package:flutter/material.dart';
import 'package:marvel_app/app/common/character_slider.dart';
import '../../core/constants/app_colors.dart';
import '../../core/constants/app_constants.dart';
import '../../core/constants/app_styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppConstants.homeBackground),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  height: 200,
                  child: Image(
                    image: AssetImage(AppConstants.logo),
                  ),
                ),
                SizedBox(
                  child: Text(
                    AppConstants.homeText.toUpperCase(),
                    style: AppStyles.homeTextStyle,
                  ),
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CharacterSlider(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: AppColors.buttonColor,
                      padding: AppStyles.buttonStyle,
                      textStyle: AppStyles.buttonTextStyle,
                    ),
                    child: const Text(AppConstants.enter),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
