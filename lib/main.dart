import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'configs/app_routes.dart';
import 'core/styles/app_theme.dart';
import 'modules/education/presentation/diagnosis.dart';
import 'modules/home/presentation/home_screen.dart';
import 'modules/map/presentation/screens/map_page.dart';

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
      theme: AppTheme.appTheme(),
      title: 'Yandex Intensive Covid',
      initialRoute: AppRoutes.homePageScreen,
      routes: {
        AppRoutes.mapPageScreen: (_) => const MapPage(),
        AppRoutes.homePageScreen: (_) => const HomeScreen(),
        AppRoutes.educationPageScreen: (_) => const Scaffold(
              body: DiagnosisPage(),
            )
      },
    );
  }
}
