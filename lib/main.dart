import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/styles/app_theme.dart';
import 'modules/bottom_navigation/bottom_navigation.dart';
import 'modules/general/push_notification_service.dart';

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

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  // ignore: prefer_expression_function_bodies
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.appTheme(),
      title: 'Yandex Intensive Covid',
      home: BottomNavigation(),
    );
  }
}
