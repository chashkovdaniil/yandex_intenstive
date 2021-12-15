import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yandex_intensive/configs/navigator.dart';
import 'package:yandex_intensive/configs/providers.dart';
import 'package:yandex_intensive/modules/map/presentation/screens/country_details_screen.dart';

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

class MyApp extends HookConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  // ignore: prefer_expression_function_bodies
  Widget build(BuildContext context, ref) {
    return MaterialApp(
      theme: AppTheme.light(),
      title: 'Yandex Intensive Covid',
      navigatorKey: ref.watch(navigator).key,
      routes: {
        '/': (_) => BottomNavigation(),
        AppRoutes.searchScreenRoute: (_) => SearchScreen(),
        AppRoutes.countryDetails: (_) => CountryDetailsScreen(),
      },
      // home: const BottomNavigation(),
    );
  }
}
