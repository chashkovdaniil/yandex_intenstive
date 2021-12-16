import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod/riverpod.dart';
import 'package:yandex_intensive/core/domain/entities/country_covid_entity.dart';

part 'map_screen_state.freezed.dart';

@freezed
class MapScreenStateStatus with _$MapScreenStateStatus {
  const factory MapScreenStateStatus.success() = Success;

  const factory MapScreenStateStatus.failed() = Failed;

  const factory MapScreenStateStatus.loading() = Loading;
}

@freezed
class MapScreenState with _$MapScreenState {
  const factory MapScreenState({
    required MapScreenStateStatus status,
    Map<String, CountryCovid>? countriesCovid,
  }) = _MapScreenState;
}

class MapScreenManager extends StateNotifier<MapScreenState> {
  MapScreenManager()
      : super(
          const MapScreenState(
            status: MapScreenStateStatus.loading(),
          ),
        );

  setData({
    Map<String, CountryCovid>? countriesCovid,
  }) {
    state = state.copyWith(
      countriesCovid: countriesCovid ?? state.countriesCovid,
      status: const MapScreenStateStatus.success(),
    );
  }
}