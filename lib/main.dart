import 'package:flutter/material.dart';
import 'modules/home/presentation/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  // ignore: prefer_expression_function_bodies
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yandex Intensive Covid',
      initialRoute: HomeScreen.route,
      routes: {
        HomeScreen.route: (_) => HomeScreen(),
      },
    );
  }
}
