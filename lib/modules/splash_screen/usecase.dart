import '../../configs/app_routes.dart';
import '../../configs/navigator.dart';
import '../../configs/shared_preferences_names.dart';
import '../../core/domain/providers/shared_prefs.dart';

class SplashUseCase {
  final SharedPrefs _sharedPrefs;
  final AppNavigationManager _navigator;

  const SplashUseCase(this._sharedPrefs, this._navigator);

  Future<void> init() async {
    await Future.delayed(const Duration(seconds: 3));
    final shouldOpenOnboarding =
        _sharedPrefs.getBool(SharedPreferencesNames.shouldOpenOnboarding) ??
            true;
    _navigator.pushReplacementAndRemoveUntil(
      shouldOpenOnboarding
          ? AppRoutes.onboardingScreen
          : AppRoutes.bottomNavigation,
    );
  }
}
