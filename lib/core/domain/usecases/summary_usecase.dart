import 'package:yandex_intensive/core/domain/repositories/covid_repository.dart';
import 'package:yandex_intensive/core/domain/usecases/base_usecase.dart';

class SummaryUsecase implements BaseUsecase<String> {
  final CovidRepository _repository;

  SummaryUsecase(this._repository);

  @override
  Future<String> call() {
    // TODO: implement call
    throw UnimplementedError();
  }
}
