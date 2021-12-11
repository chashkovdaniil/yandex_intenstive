import 'package:riverpod/riverpod.dart';
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
final covidRepository = Provider<CovidRepository>(
  (ref) {
    final covidCacheDatasource = ref.read(covidCacheDatasourceProvider);
    final covidNetworkDatasource = ref.read(covidNetworkDatasourceProvider);

    return CovidRepositoryImpl(
      covidCacheDatasource: covidCacheDatasource,
      covidNetworkDatasource: covidNetworkDatasource,
    );
  },
);
