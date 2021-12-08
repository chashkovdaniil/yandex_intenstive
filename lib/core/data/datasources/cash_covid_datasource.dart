/*
 * Класс, который извлекает и загружает данные по ковиду в кеш
 */

import 'covid_datasource.dart';



class CashCovidDatasource implements CovidDatasource
{
  @override
  Future<CovidReport> operator()([
    DateTime date     = DateTime.now(),
    String?  country  = null, // null — весь мир
    String?  province = null, // null — вся страна
  ]) async
  {
    throw UnimplementedError();
  }

  @override
  Future<List<String>> countryCodes() async
  {
    throw UnimplementedError();
  }

  @override
  Future<String>       countryName(String code) async
  {
    throw UnimplementedError();
  }
}



// END
