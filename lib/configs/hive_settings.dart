import 'package:hive_flutter/hive_flutter.dart';
import '../core/domain/entities/country_covid_entity.dart';
import '../core/domain/entities/covid_report.dart';

initHive() async {
  await Hive.initFlutter();
  registerHiveAdapters();
  await openHiveBoxes();
}

registerHiveAdapters() {
  Hive
    ..registerAdapter(CovidReportAdapter())
    ..registerAdapter(CountryCovidAdapter())
    ..registerAdapter(ProvinceCovidAdapter())
    ..registerAdapter(CountryAdapter())
    ..registerAdapter(ProvinceAdapter());
}

const hiveBoxCountries = 'countries';
const hiveBoxStatsTotal = 'statsTotal';
const hiveBoxStatsCountries = 'statsCountries';
openHiveBoxes() async {
  await Hive.openBox<Country>(hiveBoxCountries);
  await Hive.openBox<CountryCovid>(hiveBoxStatsCountries);
  await Hive.openBox<CovidReport>(hiveBoxStatsTotal);
}
