/*
 * Абстрактный класс, с помощью которого можно получить данные по ковиду
 */

import '../../domain/entities/covid_report.dart';
import '../../domain/entities/covid_help.dart';



abstract class CovidDatasourceAbstruct
{
  Future<CovidWorld> getAll(
    DateTime date
  );

  Future<CovidReport> getWorld(
    DateTime date
  );

  Future<CovidReport> getCountry(
    DateTime date,
    String country,
  );

  Future<CovidReport> getProvince(
    DateTime date,
    String country,
    String province,
  );

  Future<bool> has(DateTime date);

  Future<List<String>> countryCodes();
  Future<String>       countryName(String code);
}

class CovidNotFoundException implements Exception
{
  String cause;
  CovidNotFoundException(this.cause);
}



// END
