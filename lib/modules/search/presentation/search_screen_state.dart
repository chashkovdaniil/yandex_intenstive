import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod/riverpod.dart';
import 'package:yandex_intensive/configs/providers.dart';

import 'package:yandex_intensive/core/domain/repositories/covid_repository.dart';
import 'package:yandex_intensive/modules/search/domains/usecases/countries_usecase.dart';

import '../../../core/domain/entities/country_covid_entity.dart';

part 'search_screen_state.freezed.dart';

@freezed
class SearchScreenStateStatus with _$SearchScreenStateStatus {
  const factory SearchScreenStateStatus.success() = Success;
  const factory SearchScreenStateStatus.loading() = Loading;
  const factory SearchScreenStateStatus.failed() = Failed;
}

@freezed
class SearchScreenState with _$SearchScreenState {
  const factory SearchScreenState({
    required List<Country> countries,
    required SearchScreenStateStatus status,
  }) = _SearchScreenState;
}

class SearchScreenStateManager extends StateNotifier<SearchScreenState> {
  SearchScreenStateManager()
      : super(
          SearchScreenState(
            countries: List<Country>.empty(),
            status: const SearchScreenStateStatus.success(),
          ),
        );

  setStatus(SearchScreenStateStatus status) {
    state = state.copyWith(status: status);
  }

  setCountries(List<Country> countries) {
    state = state.copyWith(
      countries: countries,
      status: const SearchScreenStateStatus.success(),
    );
  }
}
