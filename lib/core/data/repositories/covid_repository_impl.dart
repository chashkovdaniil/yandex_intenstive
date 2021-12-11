import '../../api/app_exceptions.dart';
import '../../domain/entities/covid_help.dart';
import '../../domain/entities/covid_report.dart';

import '../datasources/cache_covid_datasource.dart';
import '../datasources/covid_network_taker.dart';
import '../datasources/ram_covid_datasource.dart';

import 'covid_repository.dart';

class CovidRepositoryImpl implements CovidRepository {
  // Специальная дата, по которой получается
  // список кодов стран и названия стран
  static final specialDate = DateTime(2021);

  final _ramDatasource = RAMCovidDatasource();
  final _cacheDatasource = CacheCovidDatasource();
  final _netDatasource = CovidNetworkTaker();

  @override
  Future<CovidReport> world(DateTime date) async {
    await _loadData(date);
    return (await _ramDatasource.worldInfo(date)).total;
  }

  @override
  Future<CovidReport> country(
    DateTime date,
    String country,
  ) async {
    await _loadData(date);
    var worldInfo = await _ramDatasource.worldInfo(date);
    var countryInfo = worldInfo.countries[country];
    if (countryInfo == null) {
      throw CovidNotFoundException("Can't find country $country");
    }
    return countryInfo.total;
  }

  @override
  Future<CovidReport> province(
    DateTime date,
    String country,
    String province,
  ) async {
    await _loadData(date);
    var worldInfo = await _ramDatasource.worldInfo(date);
    var report = worldInfo.countries[country]?.provinces[province];
    if (report == null) {
      throw CovidNotFoundException("Can't find country $country");
    }
    return report;
  }

  /// Возвращает список iso-кодов всех стран
  @override
  Future<Iterable<String>> countryCodes() async {
    await _loadData(specialDate);
    return (await _ramDatasource.worldInfo(specialDate)).countries.keys;
  }

  /// Получить человеческое назввание страны по её iso-коду
  @override
  Future<String> countryName(String code) async {
    await _loadData(specialDate);
    final world = await _ramDatasource.worldInfo(specialDate);
    var name = world.countries[code]?.total.region.name;
    if (name == null) {
      throw CovidNotFoundException("Can't find country $country");
    }
    return name;
  }

  Future<void> _loadData(DateTime date) async {
    if (await _ramDatasource.hasInfo(date)) {
      return;
    }

    var world = CovidWorld(await _netDatasource.getOneDay(date));
    // _cash.addWorldInfo(date, world); TODO: Реализовать кеширование
    _ramDatasource.addWorldInfo(date, world);
  }
}
