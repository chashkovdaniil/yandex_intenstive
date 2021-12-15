import 'package:flutter_test/flutter_test.dart';
import 'package:yandex_intensive/core/data/datasources/covid_network_datasource.dart';
import 'package:yandex_intensive/core/domain/entities/country_covid_entity.dart';

void main() {
  // Future<Map<String, CountryCovid>> statsCountriesByDate({DateTime? date});
  // Future<CovidReport> statsCountryByDate({
  //   DateTime? date,
  //   required String iso,
  // });
  // Future<CovidReport> statsTotalByDate({DateTime? date});
  final _api = CovidNetworkDatasource();
  test('Get countries', () async {
    var countries = await _api.countries();
    expect(countries.isNotEmpty, true);
  });
  test('Get total statistics by date', () async {
    var result = await _api.statsTotalByDate(
      date: DateTime.now().subtract(
        const Duration(days: 2),
      ),
    );
    expect(result.active > 0, true);
  });

  test('Get statistics by country & date', () async {
    var result = await _api.statsCountryByDate(
      date: DateTime.now().subtract(
        const Duration(days: 2),
      ),
      country: const Country(code: 'usa', name: 'USA'),
    );
    expect(result.active > 0, true);
  });
}
