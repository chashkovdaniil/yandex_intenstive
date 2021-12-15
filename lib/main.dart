import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'configs/app_routes.dart';
import 'configs/navigator.dart';
import 'core/styles/app_theme.dart';
import 'modules/bottom_navigation/bottom_navigation.dart';
import 'modules/general/push_notification_service.dart';
import 'modules/map/presentation/screens/country_details_screen.dart';
import 'modules/search/presentation/search_screen.dart';

void main() async {
  await PushNotificationService().setupInteractedMessage();
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
        AppRoutes.searchScreenRoute: (_) => const SearchScreen(),
        AppRoutes.countryDetails: (_) => const CountryDetailsScreen(),
      },
      // home: const BottomNavigation(),
    );
  }
}
