import 'package:flutter/material.dart';

import '../../configs/colors.dart';

class AppTheme {
  AppTheme();

  static ThemeData appTheme() {
    return ThemeData(
      fontFamily: '.SF Pro Text',
      primaryColor: primary,
      scaffoldBackgroundColor: white,
    );
  }
}
