import 'package:flutter/material.dart';

import 'colors.dart';

class TextStyles {
  static TextStyle get titleMap => const TextStyle(
      fontFamily: '.SF Pro Text',
      color: Colors.black,
      fontWeight: FontWeight.w600,
      fontSize: 17);

  static TextStyle get titleCountry => const TextStyle(
      fontFamily: '.SF Pro Text',
      color: Colors.black,
      fontWeight: FontWeight.w400,
      fontSize: 17);

  static TextStyle get infoCountry => const TextStyle(
      fontFamily: '.SF Pro Text',
      color: Color(0xFF999999),
      fontWeight: FontWeight.w400,
      fontSize: 13);

  static TextStyle get titleCountryDetails => const TextStyle(
      fontFamily: '.SF Pro Text',
      color: Colors.black,
      fontWeight: FontWeight.w400,
      fontSize: 22);

  static TextStyle get infectedValue => const TextStyle(
      fontFamily: '.SF Pro Text',
      color: green,
      fontWeight: FontWeight.w600,
      fontSize: 28);

  static TextStyle get deathValue => const TextStyle(
      fontFamily: '.SF Pro Text',
      color: primary,
      fontWeight: FontWeight.w600,
      fontSize: 28);
}
