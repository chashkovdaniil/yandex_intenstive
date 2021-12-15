import 'package:dio/dio.dart';
import 'package:sprintf/sprintf.dart';
import 'package:yandex_intensive/core/data/dto/country_dto.dart';

// import 'package:yandex_intensive/core/domain/entities/country_entity.dart';

import '../../api/app_exceptions.dart';
import '../../domain/entities/country_covid_entity.dart';
import '../../domain/entities/covid_report.dart';
import '../dto/covid_report_dto.dart';
import 'covid_datasource.dart';

class CovidNetworkDatasource implements CovidDatasource {
  static const _apiReports = 'https://covid-api.com/api/reports';
  static const _apiReportsTotal = 'https://covid-api.com/api/reports/total';
  static const _apiCountries = 'https://covid-api.com/api/regions';

  final Dio _dio = Dio();

  @override
  Future<Map<String, CountryCovid>> statsCountriesByDate({
    DateTime? date,
  }) async {
    try {
      date ??= DateTime.now().subtract(const Duration(days: 2));
      var str = sprintf('%04i-%02i-%02i', [date.year, date.month, date.day]);
      var json = await _dio.get(_apiReports, queryParameters: {'date': str});
      var reportsRaw = json.data['data'] as List<dynamic>;
      var reportsDto = reportsRaw.map(
        (e) => CovidReportDto.fromJson(e as Map<String, dynamic>),
      );

      var reportsByCountry = <String, CountryCovid>{};

      for (final reportDto in reportsDto) {
        var country = Country(
          code: reportDto.region!['iso'],
          name: reportDto.region!['name'],
        );

        var province = Province(
          name: reportDto.region!['province'],
          lat: double.parse(reportDto.region!['lat'] ?? '0'),
          long: double.parse(reportDto.region!['long'] ?? '0'),
        );
        var covidReport = CovidReport.fromDto(reportDto);

        var provinceCovid = ProvinceCovid(
          covidReport: covidReport,
          province: province,
        );

        if (reportsByCountry.keys.contains(country.code)) {
          var cc = reportsByCountry[country.code];
          cc!.copyWith(
            provinces: [
              ...reportsByCountry[country.code]!.provinces,
              provinceCovid
            ],
            covidReport: reportsByCountry[country.code]!.covidReport.copyWith(
                  active: covidReport.active +
                      reportsByCountry[country.code]!.covidReport.active,
                  activeDiff: covidReport.activeDiff +
                      reportsByCountry[country.code]!.covidReport.activeDiff,
                  confirmed: covidReport.confirmed +
                      reportsByCountry[country.code]!.covidReport.confirmed,
                  confirmedDiff: covidReport.confirmedDiff +
                      reportsByCountry[country.code]!.covidReport.confirmedDiff,
                  deaths: covidReport.deaths +
                      reportsByCountry[country.code]!.covidReport.deaths,
                  deathsDiff: covidReport.deathsDiff +
                      reportsByCountry[country.code]!.covidReport.deathsDiff,
                  recovered: covidReport.recovered +
                      reportsByCountry[country.code]!.covidReport.recovered,
                  recoveredDiff: covidReport.recoveredDiff +
                      reportsByCountry[country.code]!.covidReport.recoveredDiff,
                  fatalityRate: covidReport.fatalityRate +
                      reportsByCountry[country.code]!.covidReport.fatalityRate,
                ),
          );
        } else {
          reportsByCountry[country.code] = CountryCovid(
            country: country,
            covidReport: covidReport,
            provinces: [provinceCovid],
          );
        }
      }
      // ToDo: сделать проверку на ошибки с сервера
      return reportsByCountry;
    } catch (e) {
      throw CovidNotFoundException("Can't take covid data from network: $e");
    }
  }

  @override
  Future<CovidReport> statsCountryByDate({
    required Country country,
    DateTime? date,
  }) async {
    try {
      date ??= DateTime.now();
      var str = sprintf('%04i-%02i-%02i', [date.year, date.month, date.day]);
      var json = await _dio.get(_apiReportsTotal,
          queryParameters: {'date': str, 'iso': country.code});
      var raw = json.data['data'] as Map<String, dynamic>;
      var dto = CovidReportDto.fromJson(raw);

      return CovidReport.fromDto(dto);
    } catch (e) {
      throw CovidNotFoundException("Can't take covid data from network: $e");
    }
  }

  @override
  Future<CovidReport> statsTotalByDate({DateTime? date}) async {
    try {
      date ??= DateTime.now();
      var strDate =
          sprintf('%04i-%02i-%02i', [date.year, date.month, date.day]);
      var json =
          await _dio.get(_apiReportsTotal, queryParameters: {'date': strDate});
      var raw = json.data as Map<String, dynamic>;
      var data = raw['data'];
      if (data is List<dynamic> && data.isEmpty) {
        return CovidReport.fromDto(CovidReportDto(
          date: strDate,
          confirmed: 0,
          deaths: 0,
          recovered: 0,
          confirmedDiff: 0,
          deathsDiff: 0,
          recoveredDiff: 0,
          lastUpdate: strDate,
          active: 0,
          activeDiff: 0,
          fatalityRate: 0,
          region: {},
        ));
      }
      var dto = CovidReportDto.fromJson(data);

      return CovidReport.fromDto(dto);
    } catch (e) {
      throw CovidNotFoundException("Can't take covid data from network: $e");
    }
  }

  @override
  Future<List<CovidReport>> statsTotalByYear(int year) async {
    try {
      final data = List<CovidReport>.empty(growable: true);
      var lastMonth = 12;
      if (year == DateTime.now().year) {
        lastMonth = DateTime.now().month;
      }
      for (var month = 1; month <= lastMonth; month++) {
        data.add(await statsTotalByDate(date: DateTime(year, month)));
      }
      return data;
    } catch (e) {
      throw CovidNotFoundException("Can't take covid data from network: $e");
    }
  }

  @override
  Future<List<CovidReport>> statsTotal() async {
    try {
      final data = List<CovidReport>.empty(growable: true);
      for (var year = 2020; year <= DateTime.now().year; year++) {
        data.addAll(await statsTotalByYear(year));
      }
      return data;
    } catch (e) {
      throw CovidNotFoundException("Can't take covid data from network: $e");
    }
  }

  @override
  Future<List<Country>> countries() async {
    final response = await _dio.get(_apiCountries);
    final dataRaw = response.data['data'] as List<dynamic>;
    final countries = dataRaw.map((e) {
      return Country.fromDto(CountryDto.fromJson(e as Map<String, dynamic>));
    });
    return countries.toList();
  }
}
