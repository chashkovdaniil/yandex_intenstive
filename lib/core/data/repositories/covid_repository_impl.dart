import '../../api/internet_checker.dart';
import '../../domain/entities/country_covid_entity.dart';
import '../../domain/entities/covid_report.dart';
import '../../domain/repositories/covid_repository.dart';
import '../datasources/covid_cache_datasource.dart';
import '../datasources/covid_datasource.dart';

class CovidRepositoryImpl implements CovidRepository {
  final CovidCacheDatasource _covidCacheDatasource;
  final CovidDatasource _covidNetworkDatasource;
  final InternetChecker _internetChecker;
  CovidRepositoryImpl({
    required CovidCacheDatasource covidCacheDatasource,
    required CovidDatasource covidNetworkDatasource,
    required InternetChecker internetChecker,
  })  : _covidCacheDatasource = covidCacheDatasource,
        _covidNetworkDatasource = covidNetworkDatasource,
        _internetChecker = internetChecker;

  Future<CovidDatasource> get _covidDatasource async {
    /// ToDo: проверка на соединение
    return (await _internetChecker.isConnected())
        ? _covidNetworkDatasource
        : _covidCacheDatasource;
  }

  @override
  Future<Map<String, CountryCovid>> statsCountriesByDate({
    DateTime? date,
  }) async {
    var result = (await _covidDatasource).statsCountriesByDate(date: date);
    _covidCacheDatasource.saveStatsCountriesByDate(await result);
    return result;
  }

  @override
  Future<CovidReport> statsCountryByDate({
    DateTime? date,
    required Country country,
  }) async {
    return (await _covidDatasource)
        .statsCountryByDate(date: date, country: country);
  }

  @override
  Future<CovidReport> statsTotalByDate({DateTime? date}) async {
    return (await _covidDatasource).statsTotalByDate(date: date);
  }

  @override
  Future<List<Country>> countries() async {
    var result = (await _covidDatasource).countries();
    _covidCacheDatasource.saveCountries(await result);
    return result;
  }

  @override
  Future<List<CovidReport>> statsTotal() async {
    var result = (await _covidDatasource).statsTotal();
    _covidCacheDatasource.saveStatsTotal(await result);
    return result;
  }

  @override
  Future<List<CovidReport>> statsTotalByYear(int year) async {
    return (await _covidDatasource).statsTotalByYear(year);
  }
}
