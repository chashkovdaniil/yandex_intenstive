import 'covid_report.dart';

class DataRaw {
  final List<CovidReport> data;

  DataRaw({
    required this.data,
  });

  factory DataRaw.fromJson(Map<String, dynamic> json) => DataRaw(
    data: List<CovidReport>.from(json['data'].map((x) => CovidReport.fromJson(x))),
  );

  Map<String, dynamic> toJson(DataRaw row) => {
    'data': List<dynamic>.from(data.map((x) => x.toJson())),
  };
}