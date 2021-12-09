import 'covid_datasource_abstruct.dart';
import '../../api/app_exceptions.dart';
import '../../domain/entities/covid_report.dart';
import '../../domain/entities/covid_help.dart';

import 'package:dio/dio.dart';
import 'package:sprintf/sprintf.dart';



class CovidNetworkTaker
{
  static const _api = 'https://covid-api.com/api/reports';
  final Dio    _dio = Dio();

  Future<CovidWorld> getOneDay(DateTime date) async
  {
    try
    {
      var sdate = sprintf("%04i-%02i-%02i", [date.year, date.month, date.day]);
      var data  = await _dio.get(_api, queryParameters: { 'date': sdate });
      return CovidWorld(data.data['data']);
    }
    on Exception catch(e)
    {
      throw CovidNotFoundException("Can't take covid data from network: ${e}");
    }
  }
}



// END
