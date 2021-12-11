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
      iso: params.iso,
    );
  }
}

class StatsCountryByDateParams {
  final DateTime? date;
  final String iso;
  const StatsCountryByDateParams(
    this.date,
    this.iso,
  );
}