import 'package:flutter/material.dart';
import 'package:yandex_intensive/modules/map/presentation/screens/map_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yandex Intensive Covid',
      initialRoute: MapScreen.route,
      routes: {
        MapScreen.route: (_) => MapScreen(),
      },
    );
  }
}
