// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'covid_report.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CovidReport _$_$_CovidReportFromJson(Map<String, dynamic> json) {
  return _$_CovidReport(
    date: json['date'] as String? ?? '',
    confirmed: json['confirmed'] as int? ?? -1,
    deaths: json['deaths'] as int? ?? -1,
    recovered: json['recovered'] as int? ?? -1,
    confirmedDiff: json['confirmed_diff'] as int? ?? -1,
    deathsDiff: json['deaths_diff'] as int? ?? -1,
    recoveredDiff: json['recovered_diff'] as int? ?? -1,
    lastUpdate: json['last_update'] as String? ?? '',
    active: json['active'] as int? ?? -1,
    activeDiff: json['active_diff'] as int? ?? -1,
    fatalityRate: (json['fatality_rate'] as num?)?.toDouble() ?? -1.0,
    region: Region.fromJson(json['region'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_CovidReportToJson(_$_CovidReport instance) =>
    <String, dynamic>{
      'date': instance.date,
      'confirmed': instance.confirmed,
      'deaths': instance.deaths,
      'recovered': instance.recovered,
      'confirmed_diff': instance.confirmedDiff,
      'deaths_diff': instance.deathsDiff,
      'recovered_diff': instance.recoveredDiff,
      'last_update': instance.lastUpdate,
      'active': instance.active,
      'active_diff': instance.activeDiff,
      'fatality_rate': instance.fatalityRate,
      'region': instance.region,
    };

_$_Region _$_$_RegionFromJson(Map<String, dynamic> json) {
  return _$_Region(
    iso: json['iso'] as String? ?? '',
    name: json['name'] as String? ?? '',
    province: json['province'] as String? ?? '',
    lat: json['lat'] as String? ?? '',
    long: json['long'] as String? ?? '',
  );
}

Map<String, dynamic> _$_$_RegionToJson(_$_Region instance) => <String, dynamic>{
      'iso': instance.iso,
      'name': instance.name,
      'province': instance.province,
      'lat': instance.lat,
      'long': instance.long,
    };
