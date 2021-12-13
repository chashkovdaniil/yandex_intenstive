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
    color: AppColors.educationBlackHeader,
    fontSize: 34.0,
    fontWeight: FontWeight.w600,
  );

  static const educationSubtitle = TextStyle(
    color: AppColors.black,
    fontSize: 22.0,
    fontWeight: FontWeight.w400,
  );

  static const educationSubtitleLight = TextStyle(
    color: AppColors.educationGray,
    fontSize: 22.0,
    fontWeight: FontWeight.w300,
  );

  static const educationSubtitleWhite = TextStyle(
    color: AppColors.white,
    fontSize: 22.0,
    fontWeight: FontWeight.w300,
  );

  static const educationSubtitleBold = TextStyle(
    color: AppColors.educationBlackSubtitle,
    fontSize: 22.0,
    fontWeight: FontWeight.w600,
  );

  static const educationUsualLight = TextStyle(
    color: AppColors.educationGray,
    fontSize: 20.0,
    fontWeight: FontWeight.w400,
  );

  static const educationSmallLight = TextStyle(
    color: AppColors.educationGray,
    fontSize: 18.0,
    fontWeight: FontWeight.w400,
  );

  static const educationWarning = TextStyle(
    color: AppColors.educationBlackHeader,
    fontSize: 28.0,
    fontWeight: FontWeight.w600,
  );

  static const educationWarningRed = TextStyle(
    fontSize: 28.0,
    color: AppColors.primary,
    fontWeight: FontWeight.w600,
  );

  static final educationButtonStyle = ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(
      AppColors.primary,
    ),
  );
}
