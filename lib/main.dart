import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'configs/app_routes.dart';
import 'core/styles/app_theme.dart';
import 'modules/bottom_navigation/bottom_navigation.dart';
import 'modules/education/presentation/components/prevention_item.dart';
import 'modules/education/presentation/prevention.dart';
import 'modules/home/presentation/home_screen.dart';

import 'package:yandex_intensive/modules/home/presentation/home_screen.dart';
import 'package:yandex_intensive/modules/education/presentation/symptom_check.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  // ignore: prefer_expression_function_bodies
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yandex Intensive Covid',
      home: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: SymptomCheck(),
        ),
      ),
      // initialRoute: HomeScreen.route,
      // routes: {
      //   HomeScreen.route: (_) => HomeScreen(),
      // },
    );
  }
}
