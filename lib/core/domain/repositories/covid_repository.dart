import '../entities/country_covid_entity.dart';
import '../entities/covid_report.dart';

abstract class CovidRepository {
  Future<Map<String, CountryCovid>> statsCountriesByDate({DateTime? date});

  Future<CovidReport> statsCountryByDate({
    DateTime? date,
    required Country country,
  });

  Future<List<Country>> countries();

  Future<CovidReport> statsTotalByDate({DateTime? date});

  Future<List<CovidReport>> statsTotalByYear(int year);

  Future<List<CovidReport>> statsTotal();
}
