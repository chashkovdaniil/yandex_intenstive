import 'package:flutter/material.dart';

import '../../configs/colors.dart';

class AppTheme {
  AppTheme();

  static ThemeData light() {
    return ThemeData(
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actionsIconTheme: IconThemeData(
          color: AppColors.primary,
        ),
      ),
      textTheme: const TextTheme(
        headline5: TextStyle(
          color: Color(0xff151522),
        ),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        iconColor: AppColors.primary,
        fillColor: Color(0xfff2f2f2),
        filled: true,
      ),
      fontFamily: '.SF Pro Text',
      primaryColor: AppColors.primary,
      scaffoldBackgroundColor: AppColors.white,
      primaryColorLight: AppColors.primary,
      primaryColorDark: AppColors.primary,
    );
  }

  static ThemeData dark() {
    return ThemeData(
      appBarTheme: AppBarTheme(
        backgroundColor: const Color(0xff121212),
        iconTheme: const IconThemeData(
          color: AppColors.primary,
        ),
        elevation: 0,
        titleTextStyle: TextStyle(
          color: Colors.white.withOpacity(0.8),
        ),
      ),
      fontFamily: '.SF Pro Text',
      primaryColor: AppColors.blue,
      textTheme: TextTheme(
        headline5: TextStyle(
          color: Colors.white.withOpacity(0.8),
        ),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        fillColor: Color(0xff737274),
        filled: true,
      ),
      colorScheme: ColorScheme(
        surface: const Color(0xff121212),
        background: const Color(0xff000000),
        brightness: Brightness.dark,
        error: AppColors.red,
        onBackground: Color(0xff121212),
        onError: Color(0xff121212),
        onPrimary: Color(0xff121212),
        onSecondary: Color(0xff121212),
        onSurface: Colors.white.withOpacity(0.8),
        primary: AppColors.primary,
        primaryVariant: Color(0xff121212),
        secondary: Color(0xff121212),
        secondaryVariant: Color(0xff121212),
      ),
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: AppColors.primary,
      ),
      scaffoldBackgroundColor: AppColors.blue.withOpacity(0.01),
      primaryColorLight: AppColors.primary,
      primaryColorDark: AppColors.primary,
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

  static const educationSubtitleInternalBold = TextStyle(
    color: AppColors.educationGray,
    fontSize: 22.0,
    fontWeight: FontWeight.w700,
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

  static const educationSmall = TextStyle(
    color: AppColors.black,
    fontSize: 18.0,
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
