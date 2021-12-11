import '../../domain/entities/country_covid_entity.dart';
import '../../domain/entities/covid_report.dart';
import '../../domain/repositories/covid_repository.dart';

import '../datasources/covid_datasource.dart';

class CovidRepositoryImpl implements CovidRepository {
  final CovidDatasource _covidCacheDatasource;
  final CovidDatasource _covidNetworkDatasource;
  CovidRepositoryImpl({
    required CovidDatasource covidCacheDatasource,
    required CovidDatasource covidNetworkDatasource,
  })  : _covidCacheDatasource = covidCacheDatasource,
        _covidNetworkDatasource = covidNetworkDatasource;

  CovidDatasource get _covidDatasource {
    /// ToDo: проверка на соединение
    return (true) ? _covidNetworkDatasource : _covidCacheDatasource;
  }

  @override
  Future<Map<String, CountryCovid>> statsCountriesByDate({
    DateTime? date,
  }) {
    return _covidDatasource.statsCountriesByDate(date: date);
  }

  @override
  Future<CovidReport> statsCountryByDate({
    DateTime? date,
    required String iso,
  }) {
    return _covidDatasource.statsCountryByDate(date: date, iso: iso);
  }

  @override
  Future<CovidReport> statsTotalByDate({DateTime? date}) {
    return _covidDatasource.statsTotalByDate(date: date);
  }
}
