import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';
import 'package:yandex_intensive/modules/map/presentation/helpers/country_details_screen_args.dart';

import 'app_routes.dart';

final appNavigationManagerProvider = Provider<AppNavigationManager>((ref) {
  return AppNavigationManager(key: GlobalKey<NavigatorState>());
});

class AppNavigationManager {
  final GlobalKey<NavigatorState> _key;
  const AppNavigationManager({required GlobalKey<NavigatorState> key})
      : _key = key;

  get key => _key;

  NavigatorState? get _navigator => _key.currentState;

  BuildContext? get context => _navigator?.context;

  Future<dynamic>? openCountryDetails(
    CountryDetailsScreenArgs args,
  ) {
    return _navigator?.pushNamed(
      AppRoutes.countryDetails,
      arguments: args,
    );
  }
  // Future<void>? openOnboarding() => _navigator?.pushReplacementNamed(
  //       AppRoutes.onboarding,
  //     );

  // Future<Object?>? openCharts() => _navigator?.pushNamed(
  //       AppRoutes.charts,
  //     );

  push(String uri, {Object? arguments}) {
    Navigator.pushNamed(key.currentContext!, uri, arguments: arguments);
  }

  pop() {
    Navigator.pop(key.currentContext!);
  }
}
