/*
 * Класс, который извлекает и загружает данные по ковиду в кеш
 */

import 'covid_datasource_abstruct.dart';



class CashCovidDatasource implements CovidDatasourceAbstruct
{
  @override
  Future<CovidWorld> getAll(
    [DateTime date = DateTime.now()]
  ) async
  {
    throw UnimplementedError();
  }

  @override
  Future<CovidReport> getWorld(
    [DateTime date = DateTime.now()]
  ) async
  {
    throw UnimplementedError();
  }

  @override
  Future<CovidReport> getCountry(
    String country,
    [DateTime date = DateTime.now()]
  ) async
  {
    throw UnimplementedError();
  }

  @override
  Future<CovidReport> getProvince(
    String country,
    String province,
    [DateTime date = DateTime.now()]
  ) async
  {
    throw UnimplementedError();
  }

  @override
  Future<bool> has([DateTime date = DateTime.now()]) async
  {
    throw UnimplementedError();
  }

  void push(DateTime date, CovidWorld world)
  {
    throw UnimplementedError();
  }
}

class CovidNotFoundException implements Exception
{
  String cause;
  CovidNotFoundException(this.cause);
}



// END
