/*
 * Класс, который получает данные о ковиде из сети и сразу же их возвращает
 */

import 'package:dio/dio.dart';
import 'package:sprintf/sprintf.dart';
import 'covid_datasource_abstruct.dart';
import '../../domain/entities/covid_report.dart';
import '../../domain/entities/covid_help.dart';



class CovidNetworkTaker
{
  static const _api = 'https://covid-api.com/api/reports';
  final Dio    _dio = Dio();

  Future<CovidWorld> getOneDay(DateTime date) async
  {
    try
    {
      var sdate = sprintf("%04i-%02i-%02i", [date.year, date.month, date.day]);
      return CovidWorld(
        (await _dio.get(_api, queryParameters: { 'date': sdate })).data['data']
      );
    }
    on Exception catch(e)
    {
      throw CovidNotFoundException("Can't take covid data from network: ${e}");
    }
  }
}



// END
