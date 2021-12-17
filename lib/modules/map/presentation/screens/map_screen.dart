import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../configs/colors.dart';
import '../../../../configs/providers.dart';

import '../../../../generated/codegen_loader.g.dart';
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
    EasyLocalization.of(context);
    final state = ref.watch(_mapScreenProvider);

    useEffect(
      () {
        ref.watch(statsUsecaseProviderMap).call();
      },
      const [],
    );

    return SafeArea(
      child: Scaffold(
        body: RefreshIndicator(
          onRefresh: () async {
            await ref.watch(statsUsecaseProviderMap).call();
          },
          triggerMode: RefreshIndicatorTriggerMode.anywhere,
          child: state.status.when(
            success: () => MapScreenSuccessState(
              data: MapScreenSuccessData(state.countriesCovid!),
            ),
            failed: () => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(LocaleKeys.mapScreenError.tr()),
                ),
                ElevatedButton(
                  onPressed: () {
                    ref.read(statsUsecaseProviderMap).call();
                  },
                  child: Text(LocaleKeys.mapScreenRefresh.tr()),
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
      ),
    );
  }
}
