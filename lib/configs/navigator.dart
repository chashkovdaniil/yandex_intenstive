import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';

final navigator = Provider<AppNavigator>((ref) {
  return AppNavigator();
});

class AppNavigator {
  final GlobalKey<NavigatorState> _key = GlobalKey<NavigatorState>();

  get key => _key;

  push(String uri, {Object? arguments}) {
    Navigator.pushNamed(key.currentContext!, uri, arguments: arguments);
  }

  pop() {
    Navigator.pop(key.currentContext!);
  }
}
