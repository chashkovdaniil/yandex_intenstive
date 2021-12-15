import 'package:riverpod/riverpod.dart';
import 'package:throttling/throttling.dart';
import 'package:yandex_intensive/modules/home/presentation/state/home_screen_state.dart';
import 'package:yandex_intensive/modules/home/usecases/home_stats_total.dart';
import 'package:yandex_intensive/modules/search/domains/usecases/countries_by_name_usecase.dart';
import 'package:yandex_intensive/modules/search/domains/usecases/countries_usecase.dart';
import 'package:yandex_intensive/modules/search/presentation/search_screen_state.dart';
import '../core/data/datasources/covid_cache_datasource.dart';
import '../core/data/datasources/covid_datasource.dart';
import '../core/data/datasources/covid_network_datasource.dart';
import '../core/data/repositories/covid_repository_impl.dart';
import '../core/domain/repositories/covid_repository.dart';

final covidCacheDatasourceProvider = Provider<CovidDatasource>(
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
