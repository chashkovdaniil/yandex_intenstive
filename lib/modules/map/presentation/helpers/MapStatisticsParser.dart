import 'dart:isolate';

import '../../../../core/domain/entities/country_covid_entity.dart';
import 'model.dart';

/**
 *  "PSE":
 *  "CountryCovid(
 *  covidReport:
 *      CovidReport(
 *          date: 2021-12-14 00:00:00.000,
 *          confirmed: 464751,
 *          deaths: 4846,
 *          recovered: 0,
 *          confirmedDiff: 410,
 *          deathsDiff: 2,
 *          recoveredDiff: 0,
 *          lastUpdate: 2021-12-15 03:22:16.000,
 *          active: 459905,
 *          activeDiff: 408,
 *          fatalityRate: 0.0104),
 *          provinces: [
 *                ProvinceCovid(covidReport: CovidReport(date: 2021-12-14 00:00:00.000, confirmed: 464751, deaths: 4846, recovered: 0, confirmedDiff: 410, deathsDiff: 2, recoveredDiff: 0, lastUpdate: 2021-12-15 03:22:16.000, active: 459905, activeDiff: 408, fatalityRate: 0.0104), province: Province(name: , lat: 31.9522, long: 35.2332))],
 *           country: Country(code: PSE, name: West Bank and Gaza))",
 */
class MapStatisticsParser {
  // 1. pass the encoded json as a constructor argument
  final Map<String, CountryCovid> mapData;

  MapStatisticsParser(
    this.mapData,
  );

  // 2. public method that does the parsing in the background
  Future<List<MapModel>> parseInBackground() async {
    Isolate isolate;
    // create a port
    final p = ReceivePort();
    // spawn the isolate and wait for it to complete
    await Isolate.spawn(_decodeAndParseJson, p.sendPort);
    // get and return the result data
    return await p.first;
  }

  // 3. json parsing
  Future<void> _decodeAndParseJson(SendPort p) async {
    var result = <MapModel>[];
    mapData.forEach((key, value) {
      result.add(
        MapModel(
          value.country.name,
          value.covidReport.confirmed,
        ),
      );
    });
    Isolate.exit(p, result);
  }
}
