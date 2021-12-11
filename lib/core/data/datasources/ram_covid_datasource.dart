// import 'package:sprintf/sprintf.dart';
// import 'package:yandex_intensive/core/domain/entities/country_entity.dart';

// import '../../domain/entities/covid_help.dart';
// import 'covid_datasource.dart';

// class CovidRamDatasource implements CovidDatasource {
//   // final Map<String, WorldStats> _world = <String, WorldStats>{};

//   // @override
//   // Future<WorldStats> worldInfo(DateTime date) async {
//   //   var val = _world[_dateToStr(date)];
//   //   if (val != null) {
//   //     return val;
//   //   }
//   //   throw Exception("Can't find covid info in ram");
//   // }

//   // @override
//   // Future<bool> hasInfo(DateTime date) async =>
//   //     _world.containsKey(_dateToStr(date));

//   // void addWorldInfo(DateTime date, WorldStats world) =>
//   //     _world[_dateToStr(date)] = world;

//   // static String _dateToStr(DateTime date) =>
//   //     sprintf('%04i-%02i-%02i', [date.year, date.month, date.day]);

//   @override
//   Future worldStatsByDay(DateTime date) {
//     // TODO: implement worldStatsByDay
//     throw UnimplementedError();
//   }
// }
