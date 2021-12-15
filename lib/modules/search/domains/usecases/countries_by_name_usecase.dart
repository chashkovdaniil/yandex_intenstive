import '../../../../core/domain/entities/country_covid_entity.dart';
import '../../../../core/domain/repositories/covid_repository.dart';
import '../../../../core/domain/usecases/base_usecase.dart';
import '../../presentation/search_screen_state.dart';

class CountriesByName extends BaseUsecase<void> {
  final String name;
  final CovidRepository _covidRepository;
  final SearchScreenStateManager _screenStateManager;

  CountriesByName({
    required this.name,
    required CovidRepository covidRepository,
    required SearchScreenStateManager screenStateManager,
  })  : _covidRepository = covidRepository,
        _screenStateManager = screenStateManager;

  @override
  Future<void> call() async {
    _screenStateManager.setStatus(const SearchScreenStateStatus.loading());
    if (name.isEmpty) {
      _screenStateManager.setCountries(List<Country>.empty());
      return;
    }
    var countries = await _covidRepository.countries();
    _screenStateManager.setCountries(
      countries
          .where((element) =>
              element.name.toLowerCase().startsWith(name.toLowerCase()))
          .toList(),
    );
  }
}
