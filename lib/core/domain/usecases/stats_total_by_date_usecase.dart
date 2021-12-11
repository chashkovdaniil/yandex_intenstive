import '../entities/covid_report.dart';
import '../repositories/covid_repository.dart';
import 'base_usecase.dart';

class StatsCountriesByDate
    implements BaseParamsUsecase<CovidReport, StatsTotalByDateParams> {
  final CovidRepository _repository;

  StatsCountriesByDate(this._repository);

  @override
  Future<CovidReport> call(params) {
    return _repository.statsTotalByDate(date: params.date);
  }
}

class StatsTotalByDateParams {
  final DateTime? date;
  const StatsTotalByDateParams(
    this.date,
  );
}
