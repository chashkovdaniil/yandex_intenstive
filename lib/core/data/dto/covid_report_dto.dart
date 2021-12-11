import 'package:freezed_annotation/freezed_annotation.dart';

part 'covid_report_dto.freezed.dart';
part 'covid_report_dto.g.dart';

@freezed
class CovidReportDto with _$CovidReportDto {
  factory CovidReportDto({
    required String date,
    required int confirmed,
    required int deaths,
    required int recovered,
    @JsonKey(name: 'confirmed_diff') required int confirmedDiff,
    @JsonKey(name: 'deaths_diff') required int deathsDiff,
    @JsonKey(name: 'recovered_diff') required int recoveredDiff,
    @JsonKey(name: 'last_update') required String lastUpdate,
    required int active,
    @JsonKey(name: 'active_diff') required int activeDiff,
    @JsonKey(name: 'fatality_rate') required double fatalityRate,
    required Map<String, dynamic>? region,
  }) = _CovidReportDto;

  factory CovidReportDto.fromJson(Map<String, dynamic> json) =>
      _$CovidReportDtoFromJson(json);
}
