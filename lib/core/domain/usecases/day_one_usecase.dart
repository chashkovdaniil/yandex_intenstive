import 'package:yandex_intensive/core/domain/repositories/covid_repository.dart';
import 'package:yandex_intensive/core/domain/usecases/base_usecase.dart';

class DayOneUsecases implements BaseParamsUsecase<String, DayOneUsecaseParams> {
  final CovidRepository _repository;

  DayOneUsecases(this._repository);

  @override
  Future<String> call(params) {
    // TODO: implement call
    throw UnimplementedError();
  }
}

class DayOneUsecaseParams {
  final String? country;
  const DayOneUsecaseParams(
    this.country,
  );
}
