import 'package:freezed_annotation/freezed_annotation.dart';

class CovidReport {
  CovidReport({
    required this.date,
    required this.confirmed,
    required this.deaths,
    required this.recovered,
    required this.confirmedDiff,
    required this.deathsDiff,
    required this.recoveredDiff,
    required this.lastUpdate,
    required this.active,
    required this.activeDiff,
    required this.fatalityRate,
    required this.region,
  });

  final String date;
  final int confirmed;
  final int deaths;
  final int recovered;
  final int confirmedDiff;
  final int deathsDiff;
  final int recoveredDiff;
  final String lastUpdate;
  final int active;
  final int activeDiff;
  final double fatalityRate;
  final Region region;

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

  factory CovidReport.fromJson(Map<String, dynamic> json) => CovidReport(
        date: json['date'],
        confirmed: json['confirmed'],
        deaths: json['deaths'],
        recovered: json['recovered'],
        confirmedDiff: json['confirmed_diff'],
        deathsDiff: json['deaths_diff'],
        recoveredDiff: json['recovered_diff'],
        lastUpdate: json['last_update'],
        active: json['active'],
        activeDiff: json['active_diff'],
        fatalityRate: json['fatality_rate'].toDouble(),
        region: Region.fromJson(json['region']),
      );

  Map<String, dynamic> toJson() => {
        'date': date,
        'confirmed': confirmed,
        'deaths': deaths,
        'recovered': recovered,
        'confirmed_diff': confirmedDiff,
        'deaths_diff': deathsDiff,
        'recovered_diff': recoveredDiff,
        'last_update': lastUpdate,
        'active': active,
        'active_diff': activeDiff,
        'fatality_rate': fatalityRate,
        'region': region.toJson(),
      };
}

class Region {
  Region({
    required this.iso,
    required this.name,
    required this.province,
    required this.lat,
    required this.long,
  });

  final String iso;
  final String name;
  final String province;
  final String lat;
  final String long;

  factory Region.fromJson(Map<String, dynamic> json) => Region(
        iso: json['iso'],
        name: json['name'],
        province: json['province'],
        lat: json['lat'],
        long: json['long'],
      );

  Map<String, String> toJson() => {
        'iso': iso,
        'name': name,
        'province': province,
        'lat': lat,
        'long': long,
      };
}
