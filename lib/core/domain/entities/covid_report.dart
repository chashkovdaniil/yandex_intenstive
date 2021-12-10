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
    required int confirmed_diff,
    required int deaths_diff,
    required int recovered_diff,
    required String last_update,
    required int active,
    required int active_diff,
    required double fatality_rate,
    required Region region,
  }) = _CovidReport;

  factory CovidReport.fromJson(Map<String, dynamic> json)
    => _$CovidReportFromJson(json);

  factory CovidReport.fromProvinces(List<CovidReport> provinces) => CovidReport(
        date: provinces[0].date,
        confirmed: provinces.map((x) => x.confirmed).fold(0, (a, b) => a + b),
        confirmed_diff:
            provinces.map((x) => x.confirmed_diff).fold(0, (a, b) => a + b),
        deaths: provinces.map((x) => x.deaths).fold(0, (a, b) => a + b),
        deaths_diff: provinces.map((x) => x.deaths_diff).fold(0, (a, b) => a + b),
        recovered: provinces.map((x) => x.recovered).fold(0, (a, b) => a + b),
        recovered_diff:
            provinces.map((x) => x.recovered_diff).fold(0, (a, b) => a + b),
        active: provinces.map((x) => x.active).fold(0, (a, b) => a + b),
        active_diff: provinces.map((x) => x.active_diff).fold(0, (a, b) => a + b),
        last_update: provinces
            .map((x) => x.last_update)
            .reduce((a, b) => b.compareTo(a) > 0 ? b : a),
        // TODO: точно так?
        fatality_rate: provinces
                .map((x) => x.fatality_rate * x.confirmed)
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
