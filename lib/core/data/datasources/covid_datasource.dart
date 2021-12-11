import '../../domain/entities/covid_help.dart';

abstract class CovidDatasource {
  Future<CovidWorld> worldInfo(DateTime date);
  Future<bool> hasInfo(DateTime date);
}
