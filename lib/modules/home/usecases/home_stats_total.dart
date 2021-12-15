import 'package:fl_chart/fl_chart.dart';

import '../../../core/domain/repositories/covid_repository.dart';
import '../../../core/domain/usecases/base_usecase.dart';
import '../presentation/state/home_screen_state.dart';

class StatsTotal extends BaseUsecase<void> {
  final CovidRepository _repository;
  final HomeScreenManager manager;
  StatsTotal({
    required CovidRepository repository,
    required this.manager,
  }) : _repository = repository;

  @override
  Future<void> call() async {
    var lastStatsCountries = await _repository.statsCountriesByDate();
    var statsTotalByYears = await _repository.statsTotal();
    var statsTotal = await _repository.statsTotalByDate(
      date: DateTime.now().subtract(const Duration(days: 2)),
    );
    var listWithIndexes = statsTotalByYears.asMap();

    manager.setData(
      countriesCovid: lastStatsCountries,
      confirmed: statsTotal.confirmed,
      confirmedSpots: listWithIndexes
          .map<double, List<double>>(
            (key, value) => MapEntry(
              key.toDouble(),
              [key.toDouble(), value.confirmed.toDouble()],
            ),
          )
          .values
          .toList(),
      recovered: statsTotal.recovered,
      recoveredSpots: listWithIndexes
          .map<double, List<double>>(
            (key, value) => MapEntry(
              key.toDouble(),
              [key.toDouble(), value.recovered.toDouble()],
            ),
          )
          .values
          .toList(),
      deaths: statsTotal.deaths,
      deathsSpots: listWithIndexes
          .map<double, List<double>>(
            (key, value) => MapEntry(
              key.toDouble(),
              [key.toDouble(), value.deaths.toDouble()],
            ),
          )
          .values
          .toList(),
      active: statsTotal.active,
      activeSpots: listWithIndexes
          .map<double, List<double>>(
            (key, value) => MapEntry(
              key.toDouble(),
              [key.toDouble(), value.active.toDouble()],
            ),
          )
          .values
          .toList(),
      fatalityRate: statsTotal.fatalityRate,
    );
  }
}
