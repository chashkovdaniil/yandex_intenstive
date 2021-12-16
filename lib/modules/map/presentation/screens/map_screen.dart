import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yandex_intensive/configs/colors.dart';
import 'package:yandex_intensive/configs/providers.dart';

import '../../../../configs/constants.dart';
import '../state/map_screen_state.dart';
import '../state/map_screen_success_state.dart';

final _mapScreenProvider =
    StateNotifierProvider<MapScreenManager, MapScreenState>(
  (ref) => ref.watch(mapScreenStateManagerProvider),
);

class MapScreen extends HookConsumerWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(_mapScreenProvider);

    useEffect(
      () {
        ref.watch(statsUsecaseProviderMap).call();
      },
      const [],
    );

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          await ref.watch(statsUsecaseProviderMap).call();
        },
        triggerMode: RefreshIndicatorTriggerMode.anywhere,
        child: state.status.when(
          success: () => MapScreenSuccessState(
            data: MapScreenSuccessData(
              countriesStats: state.countriesCovid!,
            ),
          ),
          failed: () => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(StringValues.mapScreenError),
              ),
              ElevatedButton(
                onPressed: () {
                  ref.read(statsUsecaseProviderMap).call();
                },
                child: Text(StringValues.mapScreenRefresh),
              )
            ],
          ),
          loading: () => const Center(
            child: CircularProgressIndicator(
              color: AppColors.primary,
            ),
          ),
        ),
      ),
    );
  }
}


