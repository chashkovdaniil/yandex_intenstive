import 'package:hive/hive.dart';
import '../../../configs/hive_settings.dart';

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
    var map = <String, CountryCovid>{};

    for (final country in statsCountriesBox.values) {
      map[country.country.code] = country;
    }

    return map;
  }

  @override
  Future<CovidReport> statsCountryByDate({
    DateTime? date,
    required Country country,
  }) async {
    return statsCountriesBox.values
        .firstWhere((element) => element.country == country)
        .covidReport;
  }

  Future<void> saveStatsCountriesByDate(Map<String, CountryCovid> map) async {
    await statsCountriesBox.clear();
    await statsCountriesBox.addAll(map.values);
  }

  @override
  Future<List<Country>> countries() async {
    return countriesBox.values.toList();
  }

  Future<void> saveCountries(List<Country> data) async {
    await countriesBox.clear();
    await countriesBox.addAll(data);
    // }
    // return true;
  }

  @override
  Future<CovidReport> statsTotalByDate({DateTime? date}) async {
    return statsTotalBox
        .values.last; //firstWhere((element) => element.date == date);
  }

  @override
  Future<List<CovidReport>> statsTotal() async {
    return statsTotalBox.values.toList();
  }

  Future<void> saveStatsTotal(List<CovidReport> data) async {
    await statsTotalBox.clear();
    await statsTotalBox.addAll(data);
    // return true;
  }

  @override
  Future<List<CovidReport>> statsTotalByYear(int year) async {
    return statsTotalBox.values
        .where((element) => element.date.year == year)
        .toList();
  }
}
