/*
 * Абстрактный класс, с помощью которого можно получить данные по ковиду
 */

import 'package:yandex_intensive/core/domain/entities/covid.dart';



abstract class CovidDatasource
{
  Future<CovidReport> operator()([
    DateTime date     = DateTime.now(),
    String?  country  = null, // null — весь мир
    String?  province = null, // null — вся страна
  ]) async;

  Future<List<String>> countryCodes() async;
  Future<String>       countryName(String code) async;
}



// END
