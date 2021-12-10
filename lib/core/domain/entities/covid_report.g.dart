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
    confirmedDiff: json['confirmedDiff'] as int,
    deathsDiff: json['deathsDiff'] as int,
    recoveredDiff: json['recoveredDiff'] as int,
    lastUpdate: json['lastUpdate'] as String,
    active: json['active'] as int,
    activeDiff: json['activeDiff'] as int,
    fatalityRate: (json['fatalityRate'] as num).toDouble(),
    region: Region.fromJson(json['region'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_CovidReportToJson(_$_CovidReport instance) =>
    <String, dynamic>{
      'date': instance.date,
      'confirmed': instance.confirmed,
      'deaths': instance.deaths,
      'recovered': instance.recovered,
      'confirmedDiff': instance.confirmedDiff,
      'deathsDiff': instance.deathsDiff,
      'recoveredDiff': instance.recoveredDiff,
      'lastUpdate': instance.lastUpdate,
      'active': instance.active,
      'activeDiff': instance.activeDiff,
      'fatalityRate': instance.fatalityRate,
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
