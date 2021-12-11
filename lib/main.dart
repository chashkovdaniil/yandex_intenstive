import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/styles/app_theme.dart';
import 'modules/bottom_navigation/bottom_navigation.dart';

void main() {
  runApp(ProviderScope(
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  // ignore: prefer_expression_function_bodies
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.appTheme(),
      title: 'Yandex Intensive Covid',
      home: const BottomNavigation(),
    );
  }
}
