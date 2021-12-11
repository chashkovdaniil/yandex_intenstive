import '../../domain/entities/covid_report.dart';

abstract class CovidRepository {
  Future<CovidReport> world(DateTime date);

  Future<CovidReport> country(
    DateTime date,
    String country,
  );

  Future<CovidReport> province(
    DateTime date,
    String country,
    String province,
  );

  /// Возвращает список iso-кодов всех стран
  Future<Iterable<String>> countryCodes();

  /// Получить человеческое назввание страны по её iso-коду
  Future<String> countryName(String code);
}
