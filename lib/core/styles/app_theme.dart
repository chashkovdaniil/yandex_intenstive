import 'package:flutter/material.dart';

import '../../configs/colors.dart';

class AppTheme {
  AppTheme();

  static ThemeData light() {
    return ThemeData(
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      fontFamily: '.SF Pro Text',
      primaryColor: AppColors.primary,
      scaffoldBackgroundColor: AppColors.white,
    );
  }

  static ThemeData dark() {
    return ThemeData(
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      fontFamily: '.SF Pro Text',
      primaryColor: AppColors.blue,
      scaffoldBackgroundColor: AppColors.blue.withOpacity(0.01),
    );
  }
}
