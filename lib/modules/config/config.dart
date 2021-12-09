import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Assets {
  static final splashScreenImage = Image.asset(
      'assets/pictures/splash_screen.png',
      height: 179.68,
      width: 176.48);
}

class SplashScreenTitles {
  static const splashScreenTitle = 'covstats';
  static const splashScreenBottomText =
      'Yandex intensive on Flutter in Sirius, 2021';
}

class SplashScreenColors {
  static const titleColor = Color.fromRGBO(
    255,
    100,
    124,
    1,
  );
}

class TextStyles {
  static const splashScreenTitleTextStyle = TextStyle(
    fontSize: 40,
    fontFamily: "SF Pro Display",
    color: SplashScreenColors.titleColor,
    fontWeight: FontWeight.w600,
  );
  static const splashScreenBottomTextStyle = TextStyle(
    fontSize: 15,
    fontFamily: "SF Pro Display",
    color: Colors.black,
    fontWeight: FontWeight.w300,
  );
}
