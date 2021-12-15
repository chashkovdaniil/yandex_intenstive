import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../../data/dto/covid_report_dto.dart';

part 'covid_report.g.dart';
part 'covid_report.freezed.dart';

@freezed
class CovidReport with _$CovidReport {
  @HiveType(typeId: 5, adapterName: 'CovidReportAdapter')
  factory CovidReport({
    @HiveField(0) required DateTime date,
    @HiveField(1) required int confirmed,
    @HiveField(2) required int deaths,
    @HiveField(3) required int recovered,
    @HiveField(4) required int confirmedDiff,
    @HiveField(5) required int deathsDiff,
    @HiveField(6) required int recoveredDiff,
    @HiveField(7) required DateTime lastUpdate,
    @HiveField(8) required int active,
    @HiveField(9) required int activeDiff,
    @HiveField(10) required double fatalityRate,
  }) = _CovidReport;

  factory CovidReport.fromDto(CovidReportDto dto) {
    return CovidReport(
      date: DateTime.parse(dto.date),
      confirmed: dto.confirmed,
      deaths: dto.deaths,
      recovered: dto.recovered,
      confirmedDiff: dto.confirmedDiff,
      deathsDiff: dto.deathsDiff,
      recoveredDiff: dto.recoveredDiff,
      lastUpdate: DateTime.parse(dto.lastUpdate),
      active: dto.active,
      activeDiff: dto.activeDiff,
      fatalityRate: dto.fatalityRate,
    );
  }
}
