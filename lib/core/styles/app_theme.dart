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
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(AppColors.primary),
        ),
      ),
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
        onBackground: const Color(0xff121212),
        onError: const Color(0xff121212),
        onPrimary: const Color(0xff121212),
        onSecondary: const Color(0xff121212),
        onSurface: Colors.white.withOpacity(0.8),
        primary: AppColors.primary,
        primaryVariant: const Color(0xff121212),
        secondary: const Color(0xff121212),
        secondaryVariant: const Color(0xff121212),
      ),
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: AppColors.primary,
      ),
      scaffoldBackgroundColor: AppColors.blue.withOpacity(0.01),
      primaryColorLight: AppColors.primary,
      primaryColorDark: AppColors.primary,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(AppColors.primary),
        ),
      ),
    );
  }

  static const educationHeader1 = TextStyle(
    color: AppColors.educationBlackHeader,
    fontSize: 22.0,
    fontWeight: FontWeight.w600,
  );

  static const educationSubtitle = TextStyle(
    color: AppColors.black,
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
  );

  static const educationSubtitleLight = TextStyle(
    color: AppColors.educationGray,
    fontSize: 16.0,
    fontWeight: FontWeight.w300,
  );

  static const educationSubtitleInternalBold = TextStyle(
    color: AppColors.educationGray,
    fontSize: 16.0,
    fontWeight: FontWeight.w700,
  );

  static const educationSubtitleWhite = TextStyle(
    color: AppColors.white,
    fontSize: 16.0,
    fontWeight: FontWeight.w300,
  );

  static const educationSubtitleBold = TextStyle(
    color: AppColors.educationBlackSubtitle,
    fontSize: 16.0,
    fontWeight: FontWeight.w600,
  );

  static const educationSmall = TextStyle(
    color: AppColors.black,
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
  );

  static const educationSmallLight = TextStyle(
    color: AppColors.educationGray,
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
  );

  static const educationWarning = TextStyle(
    color: AppColors.educationBlackHeader,
    fontSize: 22.0,
    fontWeight: FontWeight.w600,
  );

  static const educationWarningRed = TextStyle(
    fontSize: 22.0,
    color: AppColors.primary,
    fontWeight: FontWeight.w600,
  );

  static final educationButtonStyle = ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(
      AppColors.primary,
    ),
  );

  static const splashScreenTitleTextStyle = TextStyle(
    fontSize: 40,
    color: AppColors.primary,
    fontWeight: FontWeight.w600,
  );
  static const splashScreenBottomTextStyle = TextStyle(
    fontSize: 15,
    color: Colors.black,
    fontWeight: FontWeight.w300,
  );
  static const buttonTextStyle = TextStyle(
    fontSize: 12,
    color: Colors.black,
    fontWeight: FontWeight.w500,
  );
  static const titleTextStyle = TextStyle(
    color: AppColors.onboaringTitle,
    fontSize: 28,
    fontWeight: FontWeight.w600,
  );
  static const descriptionTextStyle = TextStyle(
    color: AppColors.onboardingDescription,
    fontSize: 16,
    letterSpacing: 0.5,
    fontWeight: FontWeight.w300,
  );

  static ThemeMode themeModeFromStr(String mode) {
    switch (mode) {
      case 'dark':
        return ThemeMode.dark;
      case 'light':
        return ThemeMode.light;
      case 'system':
        return ThemeMode.system;
      default:
        return ThemeMode.system;
    }
  }
}
