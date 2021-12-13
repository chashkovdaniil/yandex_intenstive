import 'package:flutter/material.dart';
import 'package:yandex_intensive/modules/home/presentation/home_screen.dart';
import 'package:yandex_intensive/modules/education/presentation/symptom_check.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Yandex Intensive Covid',
      home: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: SymptomCheck(),
        ),
      ),
      // initialRoute: HomeScreen.route,
      // routes: {
      //   HomeScreen.route: (_) => HomeScreen(),
      // },
    );
  }
}
