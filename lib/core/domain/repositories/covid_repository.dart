import '../entities/country_covid_entity.dart';
import '../entities/covid_report.dart';

abstract class CovidRepository {
  Future<Map<String, CountryCovid>> statsCountriesByDate({DateTime? date});
  Future<CovidReport> statsCountryByDate({
    DateTime? date,
    required String iso,
  });
  Future<CovidReport> statsTotalByDate({DateTime? date});
}
