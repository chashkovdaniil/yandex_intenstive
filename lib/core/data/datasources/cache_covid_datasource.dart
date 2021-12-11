import '../../domain/entities/covid_help.dart';

import 'covid_datasource.dart';
import 'covid_storage.dart';

class CacheCovidDatasource implements CovidDatasource, CovidStorage {
  @override
  Future<CovidWorld> worldInfo(DateTime date) async {
    throw UnimplementedError();
  }

  @override
  Future<bool> hasInfo(DateTime date) async {
    throw UnimplementedError();
  }

  @override
  void addWorldInfo(DateTime date, CovidWorld world) {
    throw UnimplementedError();
  }
}
