import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'configs/app_routes.dart';
import 'configs/navigator.dart';
import 'core/styles/app_theme.dart';
import 'modules/bottom_navigation/bottom_navigation.dart';
import 'modules/map/presentation/screens/country_details_screen.dart';
import 'modules/search/presentation/search_screen.dart';

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  print('Handling a background message: ${message.messageId}');
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await PushNotificationService().setupInteractedMessage();
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
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
