import 'package:freezed_annotation/freezed_annotation.dart';

import 'covid_report.dart';

part 'country_covid_entity.freezed.dart';

@freezed
class Country with _$Country {
  const factory Country({
    required String code,
    required String name,
  }) = _Country;
}

@freezed
class CountryCovid with _$CountryCovid {
  factory CountryCovid({
    required CovidReport covidReport,
    required List<ProvinceCovid> provinces,
    required Country country,
  }) = _CountryCovid;
}

@freezed
class Province with _$Province {
  factory Province({
    required String name,
    required double lat,
    required double long,
  }) = _Province;
}

@freezed
class ProvinceCovid with _$ProvinceCovid {
  factory ProvinceCovid({
    required CovidReport covidReport,
    required Province province,
  }) = _ProvinceCovid;
}
