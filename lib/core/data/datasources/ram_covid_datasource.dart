/*
 * Класс, хранящий данные по ковиду во время выполнения программы
 */

import 'covid_datasource_abstruct.dart';
import 'package:sprintf/sprintf.dart';
import 'package:yandex_intensive/core/domain/entities/covid_help.dart';



class RAMCovidDatasource implements CovidDatasourceAbstruct
{
  Map<String, CovidWorld> _world;


  @override
  Future<CovidWorld> getAll(
    [DateTime date = DateTime.now()]
  ) async
    => _world[_d2s(date)] ?? _exc;

  @override
  Future<CovidReport> getWorld(
    [DateTime date = DateTime.now()]
  ) async
    => (_world[_d2s(date)] ?? _exc).total;

  @override
  Future<CovidReport> getCountry(
    String country,
    [DateTime date = DateTime.now()]
  ) async
    => ((_world[_d2s(date)] ?? _exc).country(country) ?? _exc).total;

  @override
  Future<CovidReport> getProvince(
    String country,
    String province,
    [DateTime date = DateTime.now()]
  ) async
    => ((_world[_d2s(date)] ?? _exc).country(country)
      ?? _exc).province(province) ?? _exc;

  @override
  Future<bool> has([DateTime date = DateTime.now()]) async
    => _world.containsKey(_d2s(date));

  @override
  Future<List<String>> countryCodes() async
    => _world.isEmpty ?
      throw CovidNotFoundException("Can't return countries without any data") :
      List.from(_world[_world.keys.first]!.countries);

  @override
  Future<String> countryName(String code) async
    => _world.isEmpty ? 
      throw CovidNotFoundException("Can't return countries without any data") :
      (_world[_world.keys.first]!.country(code) ?? _exc).total.region.name;


  void push(DateTime date, CovidWorld world)
    => _world[_d2s(date)] = world;


  // service functions
  get _exc => throw CovidNotFoundException('Not found covid in RAM');

  static String _d2s(DateTime date)
      => sprintf("%04i-%02i-%02i", [date.year, date.month, date.day]);
}



// END
