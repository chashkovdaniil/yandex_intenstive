import 'package:yandex_intensive/core/domain/entities/country_covid_entity.dart';

import '../entities/covid_report.dart';
import '../repositories/covid_repository.dart';
import 'base_usecase.dart';

class StatsCountriesByDate
    implements BaseParamsUsecase<CovidReport, StatsCountryByDateParams> {
  final CovidRepository _repository;

  StatsCountriesByDate(this._repository);

  @override
  Future<CovidReport> call(params) {
    return _repository.statsCountryByDate(
      date: params.date,
      country: params.country,
    );
  }
}

class StatsCountryByDateParams {
  final DateTime? date;
  final Country country;
  const StatsCountryByDateParams(
    this.date,
    this.country,
  );
}
