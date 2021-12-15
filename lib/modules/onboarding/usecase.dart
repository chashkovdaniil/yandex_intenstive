import '../../configs/app_routes.dart';
import '../../configs/navigator.dart';
import '../../configs/shared_preferences.dart';
import '../../core/domain/providers/shared_prefs.dart';

class OnboardingUseCase {
  final SharedPrefs _sharedPrefs;
  final AppNavigationManager _navigator;

  const OnboardingUseCase(
    this._sharedPrefs,
    this._navigator,
  );

  Future<void> init() async {
    await _sharedPrefs.init();
  }

  void closeOnboarding() {
    _sharedPrefs.setBool(SharedPreferences.shouldOpenOnboarding, false);
    _navigator.push(AppRoutes.bottomNavigation);
  }
}