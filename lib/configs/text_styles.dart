import 'package:flutter/material.dart';

import 'colors.dart';

class TextStyles {
  static TextStyle get titleMap => const TextStyle(
      color: Colors.black, fontWeight: FontWeight.w600, fontSize: 17);

  static TextStyle get titleCountry => const TextStyle(
      color: Colors.black, fontWeight: FontWeight.w400, fontSize: 17);

  static TextStyle get infoCountry => const TextStyle(
      color: Color(0xFF999999), fontWeight: FontWeight.w400, fontSize: 13);

  static TextStyle get titleCountryDetails => const TextStyle(
      color: Colors.black, fontWeight: FontWeight.w400, fontSize: 22);

  static TextStyle get infectedValue => const TextStyle(
      color: AppColors.green, fontWeight: FontWeight.w600, fontSize: 28);

  static TextStyle get deathValue => const TextStyle(
      color: AppColors.primary, fontWeight: FontWeight.w600, fontSize: 28);
}
