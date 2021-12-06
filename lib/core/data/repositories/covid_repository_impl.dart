import 'package:yandex_intensive/core/data/datasources/covid_datasource.dart';
import 'package:yandex_intensive/core/domain/repositories/covid_repository.dart';

class CovidRepositoryImpl implements CovidRepository {
  final CovidDatasource _localDatasource;
  final CovidDatasource _networkDatasource;

  CovidRepositoryImpl({
    required CovidDatasource localDatasource,
    required CovidDatasource networkDatasource,
  })  : _localDatasource = localDatasource,
        _networkDatasource = networkDatasource;

  @override
  Future<String> countries() {
    // TODO: implement countries
    throw UnimplementedError();
  }

  @override
  Future<String> dayOneCountry(String country) {
    // TODO: implement dayOneCountry
    throw UnimplementedError();
  }

  @override
  Future<String> dayOneSummary() {
    // TODO: implement dayOneSummary
    throw UnimplementedError();
  }

  @override
  Future<String> summary() {
    // TODO: implement summary
    throw UnimplementedError();
  }
}
