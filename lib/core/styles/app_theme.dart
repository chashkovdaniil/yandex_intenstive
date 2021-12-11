import 'package:flutter/material.dart';

import '../../configs/colors.dart';

class AppTheme {
  AppTheme();

  static ThemeData appTheme() {
    return ThemeData(
      fontFamily: '.SF Pro Text',
      primaryColor: AppColors.primary,
      scaffoldBackgroundColor: AppColors.white,
    );
  }

  static const educationHeader1 = TextStyle(
    fontSize: 34.0,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static const educationSubtitle = TextStyle(
    fontSize: 22.0,
    color: Colors.black,
  );

  static const educationSubtitleLight = TextStyle(
    fontSize: 22.0,
    color: Colors.black38,
  );

  static const educationSubtitleWhite = TextStyle(
    fontSize: 22.0,
    color: Colors.white,
  );

  static const educationSubtitleBold = TextStyle(
    fontSize: 22.0,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static const educationUsualLight = TextStyle(
    fontSize: 20.0,
    color: Colors.black54,
  );

  static const educationSmallLight = TextStyle(
    fontSize: 16.0,
    color: Colors.black54,
  );

  static const educationWarning = TextStyle(
    fontSize: 28.0,
    color: Colors.black,
    fontWeight: FontWeight.bold,
  );

  static const educationWarningRed = TextStyle(
    fontSize: 28.0,
    color: AppColors.primary,
    fontWeight: FontWeight.bold,
  );

  static final educationButtonStyle = ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(
      AppColors.primary,
    ),
  );
}
