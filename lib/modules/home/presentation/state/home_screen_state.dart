import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod/riverpod.dart';

import '../../../../core/domain/repositories/covid_repository.dart';

part 'home_screen_state.freezed.dart';

@freezed
class HomeScreenStateStatus with _$HomeScreenStateStatus {
  const factory HomeScreenStateStatus.success() = Success;
  const factory HomeScreenStateStatus.failed() = Failed;
  const factory HomeScreenStateStatus.loading() = Loading;
}

@freezed
class HomeScreenState with _$HomeScreenState {
  const factory HomeScreenState({
    required HomeScreenStateStatus status,
    List<List<double>>? confirmedSpots,
    List<List<double>>? recoveredSpots,
    Map<String, Object>? testData,
  }) = _HomeScreenState;
}

class HomeScreenProvider extends StateNotifier<HomeScreenState> {
  final CovidRepository? _covidRepository;

  HomeScreenProvider({
    CovidRepository? covidRepository,
  })  : _covidRepository = covidRepository,
        super(
          const HomeScreenState(status: HomeScreenStateStatus.loading()),
        );

  Future<void> load() async {
    if ((state.confirmedSpots == null ||
            state.recoveredSpots == null ||
            state.testData == null ||
            state.status == const HomeScreenStateStatus.failed()) &&
        state.status != const HomeScreenStateStatus.loading()) {
      state = state.copyWith(
        status: const HomeScreenStateStatus.loading(),
      );
    }
    await Future.delayed(const Duration(seconds: 3), () {
      state = state.copyWith(
        status: Random().nextBool()
            ? const HomeScreenStateStatus.success()
            : const HomeScreenStateStatus.failed(),
        confirmedSpots: [
          [0, 63839023],
          [1, 83963772],
          [2, 103409401],
          [3, 114428986],
          [4, 129525492],
          [5, 151801690],
          [6, 171051485],
          [7, 182593657],
          [8, 198291279],
          [9, 218382706],
          [10, 234285671],
          [11, 266448563]
        ],
        recoveredSpots: [
          [0, 63839023],
          [1, 83963772],
          [2, 103409401],
          [3, 114428986],
          [4, 129525492],
          [5, 100000000],
          [6, 171051485],
          [7, 182593657],
          [8, 0],
          [9, 218382706],
          [10, 234285671],
          [11, 200000000]
        ],
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
