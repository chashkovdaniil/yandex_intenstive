import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yandex_intensive/core/domain/entities/country_covid_entity.dart';
import 'package:yandex_intensive/core/domain/entities/covid_report.dart';

import 'configs/app_routes.dart';
import 'configs/navigator.dart';
import 'core/styles/app_theme.dart';
import 'modules/bottom_navigation/bottom_navigation.dart';
import 'modules/map/presentation/screens/country_details_screen.dart';
import 'modules/onboarding/onboarding.dart';
import 'modules/search/presentation/search_screen.dart';
import 'modules/splash_screen/splash_screen.dart';

registerHiveAdapters() {
  Hive
    ..registerAdapter(CovidReportAdapter())
    ..registerAdapter(CountryCovidAdapter())
    ..registerAdapter(ProvinceCovidAdapter())
    ..registerAdapter(CountryAdapter())
    ..registerAdapter(ProvinceAdapter());
}

const hiveBoxCountries = 'countries';
const hiveBoxStatsTotal = 'statsTotal';
const hiveBoxStatsCountries = 'statsCountries';
openHiveBoxes() async {
  await Hive.openBox<Country>(hiveBoxCountries);
  await Hive.openBox<CountryCovid>(hiveBoxStatsCountries);
  await Hive.openBox<CovidReport>(hiveBoxStatsTotal);
}

void main() async {
  await Hive.initFlutter();
  registerHiveAdapters();
  await openHiveBoxes();

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
