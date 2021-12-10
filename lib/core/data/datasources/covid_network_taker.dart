import 'package:dio/dio.dart';
import 'package:sprintf/sprintf.dart';

import '../../api/app_exceptions.dart';
import '../../domain/entities/data_raw.dart';

class CovidNetworkTaker {
  static const _api = 'https://covid-api.com/api/reports';
  final Dio    _dio = Dio();

  Future<DataRaw> getOneDay(DateTime date) async {
    try {
      // TODO: обработать ошибку API
      var sdate = sprintf('%04i-%02i-%02i', [date.year, date.month, date.day]);
      var json  = await _dio.get(_api, queryParameters: { 'date': sdate });
      return DataRaw.fromJson(json.data);
    }
    on Exception catch(e) {
      throw CovidNotFoundException("Can't take covid data from network: $e");
    }
  }
}