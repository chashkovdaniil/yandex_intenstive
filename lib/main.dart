import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'configs/app_routes.dart';
import 'configs/hive_settings.dart';
import 'configs/navigator.dart';
import 'configs/shared_preferences_names.dart';
import 'configs/theme_provider.dart';
import 'core/domain/providers/shared_prefs.dart';
import 'core/styles/app_theme.dart';
import 'modules/bottom_navigation/bottom_navigation.dart';
import 'modules/education/presentation/screens/education_screen.dart';
import 'modules/general/push_notification_service.dart';
import 'modules/map/presentation/screens/country_details_screen.dart';
import 'modules/onboarding/onboarding.dart';
import 'modules/search/presentation/search_screen.dart';
import 'modules/splash_screen/splash_screen.dart';

// Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
//   await Firebase.initializeApp();
//   //print('Handling a background message: ${message.messageId}');
// }

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final _sharedPrefs = SharedPrefs();
  await _sharedPrefs.init();
  await initHive();

  await PushNotificationService().setupInteractedMessage();
  // FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  await EasyLocalization.ensureInitialized();
  // await PushNotificationService().setupInteractedMessage();
  // FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  runApp(
    EasyLocalization(
      useFallbackTranslations: true,
      supportedLocales: const [Locale('en'), Locale('ru')],
      path: 'assets/translations',
      // <-- change the path of the translation files
      fallbackLocale: const Locale('en'),
      child: ProviderScope(
        overrides: [sharedPrefsProvider.overrideWithValue(_sharedPrefs)],
        child: const MyApp(),
      ),
    ),
  );
}

class MyApp extends HookConsumerWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  // ignore: prefer_expression_function_bodies
  Widget build(BuildContext context, ref) {
    var themeModeRef = ref
        .watch(sharedPrefsProvider)
        .getString(SharedPreferencesNames.themeMode);
    return ThemeProvider(
      themeMode: AppTheme.themeModeFromStr(
        themeModeRef ?? 'system',
      ),
      builder: (context) {
        return MaterialApp(
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          theme: AppTheme.light(),
          darkTheme: AppTheme.dark(),
          themeMode: ThemeProvider.of(context).themeMode,
          title: 'Yandex Intensive Covid',
          initialRoute: AppRoutes.splashScreen,
          navigatorKey: ref.watch(appNavigationManagerProvider).key,
          routes: {
            AppRoutes.bottomNavigation: (_) => const BottomNavigation(),
            AppRoutes.splashScreen: (_) => const SplashScreen(),
            AppRoutes.onboardingScreen: (_) => Onboarding(),
            AppRoutes.searchScreenRoute: (_) => const SearchScreen(),
            AppRoutes.countryDetails: (_) => const CountryDetailsScreen(),
            AppRoutes.educationPageScreen: (_) => const EducationScreen(),
          },
        );
      },
    );
  }
}
