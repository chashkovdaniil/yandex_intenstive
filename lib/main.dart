import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yandex_intensive/configs/navigator.dart';
import 'package:yandex_intensive/configs/providers.dart';
import 'package:yandex_intensive/modules/map/presentation/screens/country_details_screen.dart';

import 'core/styles/app_theme.dart';
import 'modules/bottom_navigation/bottom_navigation.dart';
import 'modules/home/presentation/home_screen.dart';
import 'modules/search/presentation/search_screen.dart';

void main() async {
  await PushNotificationService().setupInteractedMessage();
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
  var initialMessage = await FirebaseMessaging.instance.getInitialMessage();
  if (initialMessage != null) {
    // App received a notification when it was killed
  }
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
