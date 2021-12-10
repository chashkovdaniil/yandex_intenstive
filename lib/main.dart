import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'modules/education/presentation/components/prevention_item.dart';
// import 'modules/home/presentation/home_screen.dart';

void main() {
  runApp(ProviderScope(
    child: MyApp(),
  ),);
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
          icon: 'flu.png',
          title: 'Title',
          tip: 'long, long, long, long, long, long, long, long, long, long',
        ),
      ),
      // initialRoute: HomeScreen.route,
      // routes: {
      //   HomeScreen.route: (_) => HomeScreen(),
      // },
    );
  }
}
