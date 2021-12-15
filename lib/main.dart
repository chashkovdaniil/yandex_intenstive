import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'configs/app_routes.dart';
import 'configs/navigator.dart';
import 'core/styles/app_theme.dart';
import 'modules/bottom_navigation/bottom_navigation.dart';
import 'modules/map/presentation/screens/country_details_screen.dart';
import 'modules/onboarding/onboarding.dart';
import 'modules/search/presentation/search_screen.dart';
import 'modules/splash_screen/splash_screen.dart';

void main() async {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends HookConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  // ignore: prefer_expression_function_bodies
  Widget build(BuildContext context, ref) {
    return MaterialApp(
      theme: AppTheme.light(),
      title: 'Yandex Intensive Covid',
      initialRoute: AppRoutes.splashScreen,
      navigatorKey: ref.watch(appNavigationManagerProvider).key,
      routes: {
        AppRoutes.bottomNavigation: (_) => const BottomNavigation(),
        AppRoutes.splashScreen: (_) => const SplashScreen(),
        AppRoutes.onboardingScreen: (_) => Onboarding(),
        AppRoutes.searchScreenRoute: (_) => const SearchScreen(),
        AppRoutes.countryDetails: (_) => const CountryDetailsScreen(),
      },
    );
  }
}
