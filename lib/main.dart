import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:marvel_app/app/pages/splash/splash_Screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    ),
  );
}
