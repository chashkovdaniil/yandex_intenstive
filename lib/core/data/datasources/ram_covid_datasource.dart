import '../../api/app_exceptions.dart';
import '../../domain/entities/covid_help.dart';
import '../../domain/entities/covid_report.dart';

import 'package:sprintf/sprintf.dart';

import 'covid_datasource_abstruct.dart';

class RAMCovidDatasource implements CovidDatasourceAbstruct {
  final Map<String, CovidWorld> _world = <String, CovidWorld>{};

  @override
  Future<CovidWorld> getAll(DateTime date) async =>
      _world[dateToStr(date)] ?? _exc;

  @override
  Future<CovidReport> getWorld(DateTime date) async =>
      (_world[dateToStr(date)] ?? _exc).total;

  @override
  Future<CovidReport> getCountry(
    DateTime date,
    String country,
  ) async =>
      ((_world[dateToStr(date)] ?? _exc).countries[country] ?? _exc).total;

  @override
  Future<CovidReport> getProvince(
    DateTime date,
    String country,
    String province,
  ) async =>
      ((_world[dateToStr(date)] ?? _exc).countries[country] ?? _exc)
          .provinces[province] ??
      _exc;

  @override
  Future<bool> has(DateTime date) async => _world.containsKey(dateToStr(date));

  @override
  Future<List<String>> countryCodes() async => _world.isEmpty
      ? throw const CovidNotFoundException("Can't return countries without any data")
      : List.from(_world[_world.keys.first]!.countries.keys);

  @override
  Future<String> countryName(String code) async => _world.isEmpty
      ? throw const CovidNotFoundException("Can't return countries without any data")
      : (_world[_world.keys.first]!.countries[code] ?? _exc).total.region.name;

  void push(DateTime date, CovidWorld world) => _world[dateToStr(date)] = world;

  get _exc => throw const CovidNotFoundException('Not found covid in RAM');

  static String dateToStr(DateTime date) =>
      sprintf('%04i-%02i-%02i', [date.year, date.month, date.day]);
}

// END
