import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/dto/covid_report_dto.dart';

part 'covid_report.freezed.dart';

@freezed
class CovidReport with _$CovidReport {
  factory CovidReport({
    required DateTime date,
    required int confirmed,
    required int deaths,
    required int recovered,
    required int confirmedDiff,
    required int deathsDiff,
    required int recoveredDiff,
    required DateTime lastUpdate,
    required int active,
    required int activeDiff,
    required double fatalityRate,
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
