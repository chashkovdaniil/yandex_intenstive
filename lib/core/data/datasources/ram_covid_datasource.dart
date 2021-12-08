/*
 * Класс, хранящий данные по ковиду во время выполнения программы
 */

import 'covid_datasource.dart';
import 'package:yandex_intensive/core/domain/entities/covid_help.dart';



class RAMCovidDatasource implements CovidDatasource
{
  Map<DateTime, CovidWorld> _world;


  @override
  Future<CovidReport> getWorld(
    [DateTime date = DateTime.now()]
  ) async
    => (_world[date] ?? _exc()).total;

  @override
  Future<CovidReport> getCountry(
    String country,
    [DateTime date = DateTime.now()]
  ) async
    => ((_world[date] ?? _exc()).country(country) ?? _exc()).total;

  @override
  Future<CovidReport> getProvince(
    String country,
    String province,
    [DateTime date = DateTime.now()]
  ) async
    => ((_world[date] ?? _exc()).country(country)
      ?? _exc()).province(province) ?? _exc();

  void push(DateTime date, CovidWorld world)
    => _world[date] = world;


  // service functions
  _exc() =>
    throw CovidNotFoundException(
      'Not found covid in RAM'
    );

  _nonull(rep) =>
      rep ?? _exc();

}



// END
