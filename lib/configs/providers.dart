import 'package:riverpod/riverpod.dart';
import 'package:throttling/throttling.dart';

import '../core/api/internet_checker.dart';
import '../core/api/internet_checker_impl.dart';
import '../core/data/datasources/covid_cache_datasource.dart';
import '../core/data/datasources/covid_datasource.dart';
import '../core/data/datasources/covid_network_datasource.dart';
import '../core/data/repositories/covid_repository_impl.dart';
import '../core/domain/providers/shared_prefs.dart';
import '../core/domain/repositories/covid_repository.dart';
import '../modules/home/presentation/state/home_screen_state.dart';
import '../modules/home/usecases/home_stats_total.dart';
import '../modules/onboarding/usecase.dart';
import '../modules/search/domains/usecases/countries_by_name_usecase.dart';
import '../modules/search/domains/usecases/countries_usecase.dart';
import '../modules/search/presentation/search_screen_state.dart';
import '../modules/splash_screen/usecase.dart';
import 'navigator.dart';

final internetChecker = Provider<InternetChecker>(
  (ref) => InternetCheckerImpl(),
);

final covidCacheDatasourceProvider = Provider<CovidCacheDatasource>(
  (ref) => CovidCacheDatasource(),
);
final covidNetworkDatasourceProvider = Provider<CovidDatasource>(
  (ref) => CovidNetworkDatasource(),
);
final covidRepositoryProvider = Provider<CovidRepository>(
  (ref) {
    final covidCacheDatasource = ref.watch(covidCacheDatasourceProvider);
    final covidNetworkDatasource = ref.watch(covidNetworkDatasourceProvider);

    return CovidRepositoryImpl(
      covidCacheDatasource: covidCacheDatasource,
      covidNetworkDatasource: covidNetworkDatasource,
      internetChecker: ref.watch(internetChecker),
    );
  },
);
final searchScreenStateManagerProvider =
    Provider<SearchScreenStateManager>((ref) {
  return SearchScreenStateManager();
});

final countriesUsecaseProvider = Provider<Countries>((ref) {
  return Countries(
    covidRepository: ref.watch(covidRepositoryProvider),
    screenStateManager: ref.watch(searchScreenStateManagerProvider),
  );
});
final homeScreenStateManagerProvider = Provider<HomeScreenManager>((ref) {
  return HomeScreenManager();
});

final statsTotalUsecaseProvider = Provider<StatsTotal>((ref) {
  return StatsTotal(
    manager: ref.watch(homeScreenStateManagerProvider),
    repository: ref.watch(covidRepositoryProvider),
  );
});
final countriesByNameUsecaseProvider =
    Provider.family<CountriesByName, String>((ref, name) {
  return CountriesByName(
    name: name,
    covidRepository: ref.watch(covidRepositoryProvider),
    screenStateManager: ref.watch(searchScreenStateManagerProvider),
  );
});
final throttling = Provider<Throttling>((ref) {
  return Throttling();
});
final onboardingUseCaseProvider = Provider(
  (ref) => OnboardingUseCase(
    ref.watch(sharedPrefsProvider),
    ref.watch(appNavigationManagerProvider),
  ),
);
final splashUseCaseProvider = Provider(
  (ref) => SplashUseCase(
    ref.watch(sharedPrefsProvider),
    ref.watch(appNavigationManagerProvider),
  ),
);
