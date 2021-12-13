import 'package:flutter/material.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'configs/app_routes.dart';
import 'core/styles/app_theme.dart';
import 'modules/bottom_navigation/bottom_navigation.dart';
import 'modules/home/presentation/home_screen.dart';
import 'modules/search/presentation/search_screen.dart';

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
    return Portal(
      child: MaterialApp(
        theme: AppTheme.light(),
        title: 'Yandex Intensive Covid',
        routes: {
          '/': (_) => BottomNavigation(),
          AppRoutes.searchScreenRoute: (_) => SearchScreen(),
        },
        // home: const BottomNavigation(),
      ),
    );
  }
}
