import 'package:yandex_intensive/core/domain/entities/country_covid_entity.dart';
import 'package:yandex_intensive/core/domain/repositories/covid_repository.dart';
import 'package:yandex_intensive/core/domain/usecases/base_usecase.dart';
import 'package:yandex_intensive/modules/search/presentation/search_screen_state.dart';

class Countries extends BaseUsecase<void> {
  final CovidRepository _covidRepository;
  final SearchScreenStateManager _screenStateManager;
  Countries({
    required CovidRepository covidRepository,
    required SearchScreenStateManager screenStateManager,
  })  : _covidRepository = covidRepository,
        _screenStateManager = screenStateManager;

  @override
  Future<void> call() async {
    _screenStateManager.setCountries(await _covidRepository.countries());
  }
}
