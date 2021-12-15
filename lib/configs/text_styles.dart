import 'package:flutter/material.dart';

import 'colors.dart';

class TextStyles {
  static TextStyle get titleMap => const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w600,
        fontSize: 17,
      );

  static TextStyle get titleCountry => const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w400,
        fontSize: 17,
      );

  static TextStyle get infoCountry => const TextStyle(
        color: Color(0xFF999999),
        fontWeight: FontWeight.w400,
        fontSize: 13,
      );

  static TextStyle get titleCountryDetails => const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w400,
        fontSize: 22,
      );

  static TextStyle get infectedValue => const TextStyle(
        color: AppColors.green,
        fontWeight: FontWeight.w600,
        fontSize: 28,
      );

  static TextStyle get deathValue => const TextStyle(
      color: AppColors.primary, fontWeight: FontWeight.w600, fontSize: 28);

  static TextStyle get selectedLabelStyle => const TextStyle(
      color: AppColors.primary, fontWeight: FontWeight.w400, fontSize: 11);

  static TextStyle get unselectedLabelStyle => const TextStyle(
      color: AppColors.grey, fontWeight: FontWeight.w400, fontSize: 11);

  static const splashScreenTitleTextStyle = TextStyle(
    fontSize: 40,
    fontFamily: "SF Pro Display",
    color: AppColors.primary,
    fontWeight: FontWeight.w600,
  );
  static const splashScreenBottomTextStyle = TextStyle(
    fontSize: 15,
    fontFamily: "SF Pro Display",
    color: Colors.black,
    fontWeight: FontWeight.w300,
  );
  static const buttonTextStyle = TextStyle(
    fontSize: 12,
    color: Colors.black,
    fontFamily: "SF Pro Text",
    fontWeight: FontWeight.w500,
  );
  static const titleTextStyle = TextStyle(
    color: AppColors.onboaringTitle,
    fontSize: 28,
    fontFamily: "SF Pro Display",
    fontWeight: FontWeight.w600,
  );
  static const descriptionTextStyle = TextStyle(
    color: AppColors.onboardingDescription,
    fontSize: 16,
    letterSpacing: 0.5,
    fontFamily: "SF Pro Display",
    fontWeight: FontWeight.w300,
  );
}
