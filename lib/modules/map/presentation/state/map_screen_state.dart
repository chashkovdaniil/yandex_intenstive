import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod/riverpod.dart';

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
    Map<String, Object>? testData,
  }) = _MapScreenState;
}

class MapScreenProvider extends StateNotifier<MapScreenState> {
  MapScreenProvider()
      : super(
          const MapScreenState(status: MapScreenStateStatus.loading()),
        );

  Future<void> load() async {
    if (state.status == const MapScreenStateStatus.failed() &&
        state.status != const MapScreenStateStatus.loading()) {
      state = state.copyWith(
        status: const MapScreenStateStatus.loading(),
      );
    }
    await Future.delayed(const Duration(seconds: 3), () {
      state = state.copyWith(
        status: const MapScreenStateStatus.success(),
        testData: {
          'Global': {
            'NewConfirmed': 100282,
            'TotalConfirmed': 1162857,
            'NewDeaths': 5658,
            'TotalDeaths': 63263,
            'NewRecovered': 15405,
            'TotalRecovered': 230845
          },
          'Countries': [
            {
              'Country': 'ALA Aland Islands',
              'CountryCode': 'AX',
              'Slug': 'ala-aland-islands',
              'NewConfirmed': 0,
              'TotalConfirmed': 0,
              'NewDeaths': 0,
              'TotalDeaths': 0,
              'NewRecovered': 0,
              'TotalRecovered': 0,
              'Date': '2020-04-05T06:37:00Z'
            },
            {
              'Country': 'Afghanistan',
              'CountryCode': 'AF',
              'Slug': 'afghanistan',
              'NewConfirmed': 18,
              'TotalConfirmed': 299,
              'NewDeaths': 1,
              'TotalDeaths': 7,
              'NewRecovered': 0,
              'TotalRecovered': 10,
              'Date': '2020-04-05T06:37:00Z'
            },
            {
              'Country': 'Albania',
              'CountryCode': 'AL',
              'Slug': 'albania',
              'NewConfirmed': 29,
              'TotalConfirmed': 333,
              'NewDeaths': 3,
              'TotalDeaths': 20,
              'NewRecovered': 10,
              'TotalRecovered': 99,
              'Date': '2020-04-05T06:37:00Z'
            },
          ],
        },
      );
    });
  }
}
