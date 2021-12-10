import 'package:freezed_annotation/freezed_annotation.dart';

part 'covid_report.freezed.dart';
part 'covid_report.g.dart';

@freezed
class CovidReport with _$CovidReport {
  const factory CovidReport({
   @Default('') @JsonKey(name: 'date', defaultValue: '') String date,
   @Default(-1) @JsonKey(name: 'confirmed', defaultValue: -1) int confirmed,
   @Default(-1) @JsonKey(name: 'deaths', defaultValue: -1) int deaths,
   @Default(-1) @JsonKey(name: 'recovered', defaultValue: -1) int recovered,
   @Default(-1) @JsonKey(name: 'confirme_diff', defaultValue: -1) int confirmedDiff,
   @Default(-1) @JsonKey(name: 'deaths_diff', defaultValue: -1) int deathsDiff,
   @Default(-1) @JsonKey(name: 'recovered_diff', defaultValue: -1) int recoveredDiff,
   @Default('') @JsonKey(name: 'last_update', defaultValue: '') String lastUpdate,
   @Default(-1) @JsonKey(name: 'active', defaultValue: -1) int active,
   @Default(-1) @JsonKey(name: 'active_diff', defaultValue: -1) int activeDiff,
   @Default(-1.0) @JsonKey(name: 'fatality_rate', defaultValue: -1.0) double fatalityRate,
   @JsonKey(name: 'region') required Region region,
  }) = _CovidReport;

  factory CovidReport.fromJson(Map<String, dynamic> json)
    => _$CovidReportFromJson(json);

  factory CovidReport.fromProvinces(List<CovidReport> provinces) => CovidReport(
        date: provinces[0].date,
        confirmed: provinces.map((x) => x.confirmed).fold(0, (a, b) => a + b),
        confirmedDiff:
            provinces.map((x) => x.confirmedDiff).fold(0, (a, b) => a + b),
        deaths: provinces.map((x) => x.deaths).fold(0, (a, b) => a + b),
        deathsDiff: provinces.map((x) => x.deathsDiff).fold(0, (a, b) => a + b),
        recovered: provinces.map((x) => x.recovered).fold(0, (a, b) => a + b),
        recoveredDiff:
            provinces.map((x) => x.recoveredDiff).fold(0, (a, b) => a + b),
        active: provinces.map((x) => x.active).fold(0, (a, b) => a + b),
        activeDiff: provinces.map((x) => x.activeDiff).fold(0, (a, b) => a + b),
        lastUpdate: provinces
            .map((x) => x.lastUpdate)
            .reduce((a, b) => b.compareTo(a) > 0 ? b : a),
        // TODO: точно так?
        fatalityRate: provinces
                .map((x) => x.fatalityRate * x.confirmed)
                .fold(0.0, (double a, double b) => a + b) /
            provinces.map((x) => x.confirmed).fold(0, (a, b) => a + b),
        region: Region(
          iso: provinces[0].region.iso,
          name: provinces[0].region.name,
          province: '',
          lat: '',
          long: '',
        ),
      );
}

@freezed
class Region with _$Region {
  const factory Region({
    @Default('') @JsonKey(defaultValue: '') String iso,
    @Default('') @JsonKey(defaultValue: '') String name,
    @Default('') @JsonKey(defaultValue: '') String province,
    @Default('') @JsonKey(defaultValue: '') String lat,
    @Default('') @JsonKey(defaultValue: '') String long,
  }) = _Region;

  factory Region.fromJson(Map<String, dynamic> json) =>
    _$RegionFromJson(json);
}
