import '../../domain/entities/country_covid_entity.dart';
import '../../domain/entities/covid_report.dart';
import 'covid_datasource.dart';

class CovidCacheDatasource implements CovidDatasource {
  Future<bool> save(Map<String, CountryCovid> map) async {
    return true;
  }

  @override
  Future<Map<String, CountryCovid>> statsCountriesByDate({DateTime? date}) {
    // TODO: implement statsCountriesByDate
    throw UnimplementedError();
  }

  @override
  Future<CovidReport> statsTotalByDate({DateTime? date}) {
    // TODO: implement statsTotalByDate
    throw UnimplementedError();
  }

  @override
  Future<CovidReport> statsCountryByDate({
    DateTime? date,
    required Country country,
  }) {
    // TODO: implement statsCountryByDate
    throw UnimplementedError();
  }

  @override
  Future<List<Country>> countries() {
    // TODO: implement countries
    throw UnimplementedError();
  }

  @override
  Future<List<CovidReport>> statsTotal() {
    // TODO: implement statsTotal
    throw UnimplementedError();
  }

  @override
  Future<List<CovidReport>> statsTotalByYear(int year) {
    // TODO: implement statsTotalByYear
    throw UnimplementedError();
  }

  // @override
  // Future<WorldStats> worldInfo(DateTime date) async {
  //   throw UnimplementedError();
  // }

  // @override
  // Future<bool> hasInfo(DateTime date) async {
  //   throw UnimplementedError();
  // }

  // @override
  // Future<Country> countries() {
  //   // TODO: implement countries
  //   throw UnimplementedError();
  // }
}
