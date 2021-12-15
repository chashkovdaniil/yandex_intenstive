import '../../../../core/domain/repositories/covid_repository.dart';
import '../../../../core/domain/usecases/base_usecase.dart';
import '../../presentation/search_screen_state.dart';

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
