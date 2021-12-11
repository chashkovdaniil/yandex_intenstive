import 'package:yandex_intensive/core/domain/entities/country_covid_entity.dart';
import 'package:yandex_intensive/core/domain/repositories/covid_repository.dart';
import 'package:yandex_intensive/core/domain/usecases/base_usecase.dart';

class StatsCountriesByDate
    implements
        BaseParamsUsecase<Map<String, CountryCovid>,
            StatsCountriesByDateParams> {
  final CovidRepository _repository;

  StatsCountriesByDate(this._repository);

  @override
  Future<Map<String, CountryCovid>> call(params) {
    return _repository.statsCountriesByDate(date: params.date);
  }
}

class StatsCountriesByDateParams {
  final DateTime? date;
  const StatsCountriesByDateParams(
    this.date,
  );
}
