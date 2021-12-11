import '../entities/country_covid_entity.dart';
import '../repositories/covid_repository.dart';
import 'base_usecase.dart';

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
