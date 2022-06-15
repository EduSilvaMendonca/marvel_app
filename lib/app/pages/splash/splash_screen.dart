import 'dart:async';

import 'package:flutter/material.dart';
import '../../core/constants/app_constants.dart';
import '../home_page/home_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 3),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => const HomePage(),
        ),
      ),
    );
    return const SafeArea(
      child: SizedBox(
        child: Image(
          image: AssetImage(AppConstants.splash),
        ),
      ),
    );
  }
}
