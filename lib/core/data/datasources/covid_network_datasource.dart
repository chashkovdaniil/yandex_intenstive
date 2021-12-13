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
      date ??= DateTime.now();
      var str = sprintf('%04i-%02i-%02i', [date.year, date.month, date.day]);
      var json = await _dio.get(_apiReports, queryParameters: {'date': str});
      var reportsRaw = json.data['data'] as List<dynamic>;
      var reportsDto = reportsRaw.map(
        (e) => CovidReportDto.fromJson(e as Map<String, dynamic>),
      );

      // var countries = Set<Country>.identity();
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

        // countries.add(country);

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
      // _countries.addAll(countries);
      // ToDo: сделать проверку на ошибки с сервера
      return reportsByCountry;
    } catch (e) {
      throw CovidNotFoundException("Can't take covid data from network: $e");
    }
  }

  @override
  Future<CovidReport> statsCountryByDate({
    required String iso,
    DateTime? date,
  }) async {
    try {
      date ??= DateTime.now();
      var str = sprintf('%04i-%02i-%02i', [date.year, date.month, date.day]);
      var json = await _dio
          .get(_apiReportsTotal, queryParameters: {'date': str, 'iso': iso});
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
      var str = sprintf('%04i-%02i-%02i', [date.year, date.month, date.day]);
      var json =
          await _dio.get(_apiReportsTotal, queryParameters: {'date': str});
      var raw = json.data['data'] as Map<String, dynamic>;
      var dto = CovidReportDto.fromJson(raw);

      return CovidReport.fromDto(dto);
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
