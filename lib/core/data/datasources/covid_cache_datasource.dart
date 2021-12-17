import 'package:hive/hive.dart';

import '../../../configs/hive_settings.dart';
import '../../api/app_exceptions.dart';
import '../../domain/entities/country_covid_entity.dart';
import '../../domain/entities/covid_report.dart';
import 'covid_datasource.dart';

class CovidCacheDatasource implements CovidDatasource {
  final statsTotalBox = Hive.box<CovidReport>(hiveBoxStatsTotal);
  final statsCountriesBox = Hive.box<CountryCovid>(hiveBoxStatsCountries);
  final countriesBox = Hive.box<Country>(hiveBoxCountries);

  @override
  Future<Map<String, CountryCovid>> statsCountriesByDate({
    DateTime? date,
  }) async {
    try {
      var map = <String, CountryCovid>{};

      for (final country in statsCountriesBox.values) {
        map[country.country.code] = country;
      }

      return map;
    } catch (err) {
      throw AppExceptions.noInternetConnection;
    }
  }

  @override
  Future<CovidReport> statsCountryByDate({
    DateTime? date,
    required Country country,
  }) async {
    try {
      return statsCountriesBox.values
          .firstWhere((element) => element.country == country)
          .covidReport;
    } catch (err) {
      throw AppExceptions.noInternetConnection;
    }
  }

  Future<void> saveStatsCountriesByDate(Map<String, CountryCovid> map) async {
    await statsCountriesBox.clear();
    await statsCountriesBox.addAll(map.values);
  }

  @override
  Future<List<Country>> countries() async {
    try {
      return countriesBox.values.toList();
    } catch (err) {
      throw AppExceptions.noInternetConnection;
    }
  }

  Future<void> saveCountries(List<Country> data) async {
    await countriesBox.clear();
    await countriesBox.addAll(data);
  }

  @override
  Future<CovidReport> statsTotalByDate({DateTime? date}) async {
    try {
      return statsTotalBox.values.last;
    } catch (err) {
      throw AppExceptions.noInternetConnection;
    }
  }

  @override
  Future<List<CovidReport>> statsTotal() async {
    try {
      return statsTotalBox.values.toList();
    } catch (err) {
      throw AppExceptions.noInternetConnection;
    }
  }

  Future<void> saveStatsTotal(List<CovidReport> data) async {
    await statsTotalBox.clear();
    await statsTotalBox.addAll(data);
  }

  @override
  Future<List<CovidReport>> statsTotalByYear(int year) async {
    try {
      return statsTotalBox.values
          .where((element) => element.date.year == year)
          .toList();
    } catch (err) {
      throw AppExceptions.noInternetConnection;
    }
  }
}
