import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../configs/providers.dart';
import 'state/home_screen_state.dart';
import 'state/home_screen_success_state.dart';

final _homeScreenProvider =
    StateNotifierProvider<HomeScreenManager, HomeScreenState>(
  (ref) => ref.watch(homeScreenStateManagerProvider),
);

class HomeScreen extends HookConsumerWidget {
  static const route = '/';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(_homeScreenProvider);

    useEffect(
      () {
        ref.watch(statsTotalUsecaseProvider).call();
      },
      const [],
    );

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          await ref.watch(statsTotalUsecaseProvider).call();
        },
        triggerMode: RefreshIndicatorTriggerMode.anywhere,
        child: state.status.when(
          success: () => HomeScreenSuccessState(
            data: HomeScreenSuccessData(
              countriesStats: state.countriesCovid!,
              confirmed: state.confirmed!,
              confirmedSpots: state.confirmedSpots!,
              deaths: state.deaths!,
              deathsSpots: state.deathsSpots!,
              recovered: state.recovered!,
              recoveredSpots: state.recoveredSpots!,
              fatalityRate: state.fatalityRate!,
              active: state.active!,
              activeSpots: state.activeSpots!,
            ),
          ),
          failed: () => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Center(
                child: Text('Error'),
              ),
              ElevatedButton(
                onPressed: () {
                  ref.read(statsTotalUsecaseProvider).call();
                },
                child: const Text('Обновить'),
              )
            ],
          ),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
