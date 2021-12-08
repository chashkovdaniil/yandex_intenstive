/*
 * Класс, который получает данные о ковиде из сети и сразу же их возвращает
 */

import 'package:dio/dio.dart';
import 'package:yandex_intensive/core/domain/entities/covid.dart';
import 'package:yandex_intensive/core/domain/entities/covid_help.dart';



class CovidNetworkTaker
{
  static const api = 'https://covid-api.com/api/reports';
  final Dio    dio = Dio(BaseOptions(baseUrl: _api));

  Future<CovidWorld> getOneDay([DateTime date = DateTime.now()]) async
  {
    try
    {
      return CovidWorld(
        (await _dio.get('',
          queryParameters: date != '' ? { 'date': date } : null
        )).data['data']
      );
    }
    catch (e)
    {
      throw CovidNotFoundException("Can't take covid data from network: ${e}");
    }
  }
}



// END
