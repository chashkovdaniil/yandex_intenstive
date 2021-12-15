import '../../domain/entities/country_covid_entity.dart';
import '../../domain/entities/covid_report.dart';

abstract class CovidDatasource {
  Future<Map<String, CountryCovid>> statsCountriesByDate({DateTime? date});
  Future<CovidReport> statsCountryByDate({
    DateTime? date,
    required Country country,
  });
  Future<CovidReport> statsTotalByDate({DateTime? date});
  Future<List<Country>> countries();
  Future<List<CovidReport>> statsTotalByYear(int year);
  Future<List<CovidReport>> statsTotal();
}
