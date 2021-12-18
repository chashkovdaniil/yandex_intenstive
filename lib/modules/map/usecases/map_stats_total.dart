import '../../../core/domain/repositories/covid_repository.dart';
import '../../../core/domain/usecases/base_usecase.dart';
import '../presentation/state/map_screen_state.dart';

class StatsMap extends BaseUsecase<void> {
  final CovidRepository _repository;
  final MapScreenManager manager;

  StatsMap({
    required CovidRepository repository,
    required this.manager,
  }) : _repository = repository;

  @override
  Future<void> call() async {
    var lastStatsCountries = await _repository.statsCountriesByDate(
      date: DateTime(2021, 8),
    );

    manager.setData(
      countriesCovid: lastStatsCountries,
    );
  }
}
