import 'package:flutter/material.dart';
import 'package:yandex_intensive/modules/feeds/presentation/feeds_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yandex Intensive Cribbble',
      initialRoute: FeedsPage.route,
      routes: {
        FeedsPage.route: (_) => FeedsPage(),
      },
    );
  }
}
