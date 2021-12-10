import '../../domain/entities/covid_report.dart';
import '../../domain/entities/covid_help.dart';

import 'covid_datasource_abstruct.dart';



class CashCovidDatasource implements CovidDatasourceAbstruct
{
  @override
  Future<CovidWorld> getAll(
    DateTime date
  ) async
  {
    throw UnimplementedError();
  }

  @override
  Future<CovidReport> getWorld(
    DateTime date
  ) async
  {
    throw UnimplementedError();
  }

  @override
  Future<CovidReport> getCountry(
    DateTime date,
    String country,
  ) async
  {
    throw UnimplementedError();
  }

  @override
  Future<CovidReport> getProvince(
    DateTime date,
    String country,
    String province,
  ) async
  {
    throw UnimplementedError();
  }


  @override
  Future<List<String>> countryCodes()
  {
    throw UnimplementedError();
  }

  @override
  Future<String> countryName(String code)
  {
    throw UnimplementedError();
  }


  @override
  Future<bool> has(DateTime date) async
  {
    throw UnimplementedError();
  }

  void push(DateTime date, CovidWorld world)
  {
    throw UnimplementedError();
  }
}



// END
