import 'package:freezed_annotation/freezed_annotation.dart';

part 'covid_report.freezed.dart';
part 'covid_report.g.dart';

@freezed
class CovidReport with _$CovidReport {
  factory CovidReport({
    required String date,
    required int confirmed,
    required int deaths,
    required int recovered,
    required int confirmedDiff,
    required int deathsDiff,
    required int recoveredDiff,
    required String lastUpdate,
    required int active,
    required int activeDiff,
    required double fatalityRate,
    required Region region,
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
  factory Region({
    required String iso,
    required String name,
    required String province,
    required String lat,
    required String long,
  }) = _Region;

  factory Region.fromJson(Map<String, dynamic> json) =>
    _$RegionFromJson(json);
}
