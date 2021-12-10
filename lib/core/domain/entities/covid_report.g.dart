// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'covid_report.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CovidReport _$_$_CovidReportFromJson(Map<String, dynamic> json) {
  return _$_CovidReport(
    date: json['date'] as String,
    confirmed: json['confirmed'] as int,
    deaths: json['deaths'] as int,
    recovered: json['recovered'] as int,
    confirmed_diff: json['confirmed_diff'] as int,
    deaths_diff: json['deaths_diff'] as int,
    recovered_diff: json['recovered_diff'] as int,
    last_update: json['last_update'] as String,
    active: json['active'] as int,
    active_diff: json['active_diff'] as int,
    fatality_rate: (json['fatality_rate'] as num).toDouble(),
    region: Region.fromJson(json['region'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_CovidReportToJson(_$_CovidReport instance) =>
    <String, dynamic>{
      'date': instance.date,
      'confirmed': instance.confirmed,
      'deaths': instance.deaths,
      'recovered': instance.recovered,
      'confirmed_diff': instance.confirmed_diff,
      'deaths_diff': instance.deaths_diff,
      'recovered_diff': instance.recovered_diff,
      'last_update': instance.last_update,
      'active': instance.active,
      'active_diff': instance.active_diff,
      'fatality_rate': instance.fatality_rate,
      'region': instance.region,
    };

_$_Region _$_$_RegionFromJson(Map<String, dynamic> json) {
  return _$_Region(
    iso: json['iso'] as String,
    name: json['name'] as String,
    province: json['province'] as String,
    lat: json['lat'] as String,
    long: json['long'] as String,
  );
}

Map<String, dynamic> _$_$_RegionToJson(_$_Region instance) => <String, dynamic>{
      'iso': instance.iso,
      'name': instance.name,
      'province': instance.province,
      'lat': instance.lat,
      'long': instance.long,
    };
