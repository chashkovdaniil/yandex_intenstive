import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import 'bottom_navigation_state.dart';

class BottomNavigation extends StatefulWidget {
  var flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  BottomNavigation({Key? key}) : super(key: key);

  @override
  State createState() {
    return BottomNavigationState();
  }
}
