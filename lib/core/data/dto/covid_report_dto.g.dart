// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'covid_report_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CovidReportDto _$_$_CovidReportDtoFromJson(Map<String, dynamic> json) {
  return _$_CovidReportDto(
    date: json['date'] as String,
    confirmed: json['confirmed'] as int,
    deaths: json['deaths'] as int,
    recovered: json['recovered'] as int,
    confirmedDiff: json['confirmed_diff'] as int,
    deathsDiff: json['deaths_diff'] as int,
    recoveredDiff: json['recovered_diff'] as int,
    lastUpdate: json['last_update'] as String,
    active: json['active'] as int,
    activeDiff: json['active_diff'] as int,
    fatalityRate: (json['fatality_rate'] as num).toDouble(),
    region: json['region'] as Map<String, dynamic>?,
  );
}

Map<String, dynamic> _$_$_CovidReportDtoToJson(_$_CovidReportDto instance) =>
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
