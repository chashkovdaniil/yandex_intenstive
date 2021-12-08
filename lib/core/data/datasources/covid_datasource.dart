/*
 * Абстрактный класс, с помощью которого можно получить данные по ковиду
 */

import 'package:yandex_intensive/core/domain/entities/covid.dart';



abstract class CovidDatasource
{
  @override
  Future<CovidReport> getWorld(
    [DateTime date = DateTime.now()]
  ) async;

  @override
  Future<CovidReport> getCountry(
    String country,
    [DateTime date = DateTime.now()]
  ) async;

  @override
  Future<CovidReport> getProvince(
    String country,
    String province,
    [DateTime date = DateTime.now()]
  ) async;

  Future<List<String>> countryCodes() async;
  Future<String>       countryName(String code) async;
}



// END
