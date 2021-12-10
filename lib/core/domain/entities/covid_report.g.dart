// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'covid_report.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CovidReport _$_$_CovidReportFromJson(Map<String, dynamic> json) {
  return _$_CovidReport(
    date: json['date'] as String? ?? '',
    confirmed: json['confirmed'] as int? ?? 0,
    deaths: json['deaths'] as int? ?? 0,
    recovered: json['recovered'] as int? ?? 0,
    confirmedDiff: json['confirme_diff'] as int? ?? 0,
    deathsDiff: json['deaths_diff'] as int? ?? 0,
    recoveredDiff: json['recovered_diff'] as int? ?? 0,
    lastUpdate: json['last_update'] as String? ?? '',
    active: json['active'] as int? ?? 0,
    activeDiff: json['active_diff'] as int? ?? 0,
    fatalityRate: (json['fatality_rate'] as num?)?.toDouble() ?? 0.0,
    region: Region.fromJson(json['region'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_CovidReportToJson(_$_CovidReport instance) =>
    <String, dynamic>{
      'date': instance.date,
      'confirmed': instance.confirmed,
      'deaths': instance.deaths,
      'recovered': instance.recovered,
      'confirme_diff': instance.confirmedDiff,
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
