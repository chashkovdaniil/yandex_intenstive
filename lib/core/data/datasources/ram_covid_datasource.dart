import 'package:sprintf/sprintf.dart';

import '../../domain/entities/covid_help.dart';
import 'covid_datasource.dart';
import 'covid_storage.dart';

class RAMCovidDatasource implements CovidDatasource, CovidStorage {
  final Map<String, CovidWorld> _world = <String, CovidWorld>{};

  @override
  Future<CovidWorld> worldInfo(DateTime date) async {
    var val = _world[_dateToStr(date)];
    if (val != null) {
      return val;
    }
    throw Exception("Can't find covid info in ram");
  }

  @override
  Future<bool> hasInfo(DateTime date) async =>
      _world.containsKey(_dateToStr(date));

  @override
  void addWorldInfo(DateTime date, CovidWorld world) =>
      _world[_dateToStr(date)] = world;

  static String _dateToStr(DateTime date) =>
      sprintf('%04i-%02i-%02i', [date.year, date.month, date.day]);
}
