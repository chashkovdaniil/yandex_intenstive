import 'package:dio/dio.dart';
import 'package:sprintf/sprintf.dart';
import '../../api/app_exceptions.dart';

import '../../domain/entities/country_covid_entity.dart';
import '../../domain/entities/covid_report.dart';
import '../dto/country_dto.dart';
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
      final str = sprintf('%04i-%02i-%02i', [date.year, date.month, date.day]);
      final json = await _dio.get(_apiReports, queryParameters: {'date': str});
      final reportsRaw = json.data['data'] as List<dynamic>;
      final reportsDto = reportsRaw.map(
        (e) => CovidReportDto.fromJson(e as Map<String, dynamic>),
      );

      final reportsByCountry = <String, CountryCovid>{};

      for (final reportDto in reportsDto) {
        final country = Country(
          code: reportDto.region!['iso'],
          name: reportDto.region!['name'],
        );

        final province = Province(
          name: reportDto.region!['province'],
          lat: double.parse(reportDto.region!['lat'] ?? '0'),
          long: double.parse(reportDto.region!['long'] ?? '0'),
        );
        final covidReport = CovidReport.fromDto(reportDto);

        final provinceCovid = ProvinceCovid(
          covidReport: covidReport,
          province: province,
        );

        if (reportsByCountry.keys.contains(country.code)) {
          final cc = reportsByCountry[country.code];
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
    } catch (err) {
      throw AppExceptions.noInternetConnection;
    }
  }

  @override
  Future<CovidReport> statsCountryByDate({
    required Country country,
    DateTime? date,
  }) async {
    try {
      date ??= DateTime.now();
      final str = sprintf('%04i-%02i-%02i', [date.year, date.month, date.day]);
      final json = await _dio.get(
        _apiReportsTotal,
        queryParameters: {'date': str, 'iso': country.code},
      );
      final raw = json.data['data'] as Map<String, dynamic>;
      final dto = CovidReportDto.fromJson(raw);

      return CovidReport.fromDto(dto);
    } catch (err) {
      throw AppExceptions.noInternetConnection;
    }
  }

  @override
  Future<CovidReport> statsTotalByDate({DateTime? date}) async {
    try {
      date ??= DateTime.now();
      final strDate =
          sprintf('%04i-%02i-%02i', [date.year, date.month, date.day]);
      final json =
          await _dio.get(_apiReportsTotal, queryParameters: {'date': strDate});
      final raw = json.data as Map<String, dynamic>;
      final data = raw['data'];
      if (data is List<dynamic> && data.isEmpty) {
        return CovidReport.fromDto(
          CovidReportDto(
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
          ),
        );
      }
      final dto = CovidReportDto.fromJson(data);

      return CovidReport.fromDto(dto);
    } catch (err) {
      throw AppExceptions.noInternetConnection;
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
    } catch (err) {
      throw AppExceptions.noInternetConnection;
    }
  }

  @override
  Future<List<CovidReport>> statsTotal() async {
    try {
      final data = <CovidReport>[];
      var year = 2020;
      var month = 1;
      const yearEnd = 2021;
      const monthEnd = 8;

      while (year < yearEnd || month <= monthEnd) {
        data.add(await statsTotalByDate(date: DateTime(year, month)));
        if (month == 12) {
          ++year;
          month = 1;
        }
        else {
          ++month;
        }
      }

      return data;
    } catch (err) {
      throw AppExceptions.noInternetConnection;
    }
  }

  @override
  Future<List<Country>> countries() async {
    try {
      final response = await _dio.get(_apiCountries);
      final dataRaw = response.data['data'] as List<dynamic>;
      final countries = dataRaw.map((e) {
        return Country.fromDto(CountryDto.fromJson(e as Map<String, dynamic>));
      });
      return countries.toList();
    } catch (err) {
      throw AppExceptions.noInternetConnection;
    }
  }
}
