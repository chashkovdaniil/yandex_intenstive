import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'modules/education/presentation/components/prevention_item.dart';
// import 'modules/home/presentation/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  // ignore: prefer_expression_function_bodies
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Yandex Intensive Covid',
      home: Scaffold(
        body: PreventionItem(
          icon: 'assets/images/clean_hands.svg',
          width: 100.0,
          height: 100.0,
          title: 'Clean your hands often',
          tip: 'Wash hands often with soap\nand water for at least 20s',
        ),
      ),
      // initialRoute: HomeScreen.route,
      // routes: {
      //   HomeScreen.route: (_) => HomeScreen(),
      // },
    );
  }
}
