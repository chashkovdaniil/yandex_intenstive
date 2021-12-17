import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod/riverpod.dart';

import '../../../../core/domain/entities/country_covid_entity.dart';

part 'home_screen_state.freezed.dart';

@freezed
class HomeScreenStateStatus with _$HomeScreenStateStatus {
  const factory HomeScreenStateStatus.success() = Success;

  const factory HomeScreenStateStatus.failed(String msg) = Failed;

  const factory HomeScreenStateStatus.loading() = Loading;
}

@freezed
class HomeScreenState with _$HomeScreenState {
  const factory HomeScreenState({
    required HomeScreenStateStatus status,
    Map<String, CountryCovid>? countriesCovid,
    List<List<double>>? confirmedSpots,
    List<List<double>>? recoveredSpots,
    List<List<double>>? deathsSpots,
    List<List<double>>? activeSpots,
    int? deaths,
    int? confirmed,
    int? recovered,
    int? active,
    double? fatalityRate,
  }) = _HomeScreenState;
}

class HomeScreenManager extends StateNotifier<HomeScreenState> {
  HomeScreenManager()
      : super(
          const HomeScreenState(
            status: HomeScreenStateStatus.loading(),
          ),
        );

  failed([String? msg]) {
    state = state.copyWith(
      status: HomeScreenStateStatus.failed(msg ?? 'Unexpected error'),
    );
  }

  setData({
    Map<String, CountryCovid>? countriesCovid,
    List<List<double>>? confirmedSpots,
    List<List<double>>? recoveredSpots,
    List<List<double>>? deathsSpots,
    List<List<double>>? activeSpots,
    int? deaths,
    int? confirmed,
    int? recovered,
    int? active,
    double? fatalityRate,
  }) {
    state = state.copyWith(
      countriesCovid: countriesCovid ?? state.countriesCovid,
      confirmedSpots: confirmedSpots ?? state.confirmedSpots,
      recoveredSpots: recoveredSpots ?? state.recoveredSpots,
      deathsSpots: deathsSpots ?? state.deathsSpots,
      deaths: deaths ?? state.deaths,
      confirmed: confirmed ?? state.confirmed,
      recovered: recovered ?? state.recovered,
      fatalityRate: fatalityRate ?? state.fatalityRate,
      active: active ?? state.active,
      activeSpots: activeSpots ?? state.activeSpots,
      status: const HomeScreenStateStatus.success(),
    );
  }

  load() {
    state = state.copyWith(
      status: const HomeScreenStateStatus.loading(),
    );
  }
}
