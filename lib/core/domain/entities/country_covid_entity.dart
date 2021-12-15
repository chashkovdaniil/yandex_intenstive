import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../data/dto/country_dto.dart';

import 'covid_report.dart';

part 'country_covid_entity.g.dart';
part 'country_covid_entity.freezed.dart';

@freezed
class Country with _$Country {
  @HiveType(typeId: 1, adapterName: 'CountryAdapter')
  const factory Country({
    @HiveField(0) required String code,
    @HiveField(1) required String name,
  }) = _Country;
  factory Country.fromDto(CountryDto dto) {
    return Country(code: dto.iso, name: dto.name);
  }
}

@freezed
class CountryCovid with _$CountryCovid {
  @HiveType(typeId: 2, adapterName: 'CountryCovidAdapter')
  factory CountryCovid({
    @HiveField(0) required CovidReport covidReport,
    @HiveField(1) required List<ProvinceCovid> provinces,
    @HiveField(2) required Country country,
  }) = _CountryCovid;
}

@freezed
class Province with _$Province {
  @HiveType(typeId: 3, adapterName: 'ProvinceAdapter')
  factory Province({
    @HiveField(0) required String name,
    @HiveField(1) required double lat,
    @HiveField(2) required double long,
  }) = _Province;
}

@freezed
class ProvinceCovid with _$ProvinceCovid {
  @HiveType(typeId: 4, adapterName: 'ProvinceCovidAdapter')
  factory ProvinceCovid({
    @HiveField(0) required CovidReport covidReport,
    @HiveField(1) required Province province,
  }) = _ProvinceCovid;
}
