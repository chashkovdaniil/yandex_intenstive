import 'package:yandex_intensive/core/api/app_exceptions.dart';

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
    try {
      var lastStatsCountries = await _repository.statsCountriesByDate();
      var statsTotalByYears = await _repository.statsTotal();
      var statsTotalByDate = await _repository.statsTotalByDate(
        date: DateTime.now().subtract(const Duration(days: 2)),
      );
      var listWithIndexes = statsTotalByYears.asMap();

      manager.setData(
        countriesCovid: lastStatsCountries,
        confirmed: statsTotalByDate.confirmed,
        confirmedSpots: listWithIndexes
            .map<double, List<double>>(
              (key, value) => MapEntry(
                key.toDouble(),
                [key.toDouble(), value.confirmed.toDouble()],
              ),
            )
            .values
            .toList(),
        recovered: statsTotalByDate.recovered,
        recoveredSpots: listWithIndexes
            .map<double, List<double>>(
              (key, value) => MapEntry(
                key.toDouble(),
                [key.toDouble(), value.recovered.toDouble()],
              ),
            )
            .values
            .toList(),
        deaths: statsTotalByDate.deaths,
        deathsSpots: listWithIndexes
            .map<double, List<double>>(
              (key, value) => MapEntry(
                key.toDouble(),
                [key.toDouble(), value.deaths.toDouble()],
              ),
            )
            .values
            .toList(),
        active: statsTotalByDate.active,
        activeSpots: listWithIndexes
            .map<double, List<double>>(
              (key, value) => MapEntry(
                key.toDouble(),
                [key.toDouble(), value.active.toDouble()],
              ),
            )
            .values
            .toList(),
        fatalityRate: statsTotalByDate.fatalityRate,
      );
    } on AppExceptions catch (err) {
      print("USECASE APPEXCEPTION: $err");
      switch (err) {
        case AppExceptions.requestCancelled:
          manager.failed('Request cancelled');
          break;
        case AppExceptions.badRequest:
          manager.failed('Bad request');
          break;
        case AppExceptions.notFound:
          manager.failed('Not found');
          break;
        case AppExceptions.requestTimeout:
          manager.failed('Request timeout');
          break;
        case AppExceptions.unexpectedError:
          manager.failed('Unexpected error');
          break;
        case AppExceptions.serviceUnavailable:
          manager.failed('Service unavailable');
          break;
        case AppExceptions.noInternetConnection:
          manager.failed('No internet connection');
          break;
        case AppExceptions.internalServerError:
          manager.failed();
          break;
        case AppExceptions.conflict:
          manager.failed();
          break;
        case AppExceptions.unauthorizedRequest:
          manager.failed();
          break;
      }
    } catch (err, s) {
      print("USECAE CATCH: $err $s");
      manager.failed();
    }
  }
}
