import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../configs/constants.dart';
import '../state/map_screen_state.dart';
import '../widgets/app_bar.dart';
import '../widgets/card.dart';
import '../widgets/map.dart';
import '../widgets/rest_list.dart';
import '../widgets/top_list.dart';

final _mapScreenProvider =
    StateNotifierProvider<MapScreenProvider, MapScreenState>(
  (ref) => MapScreenProvider(),
);

class MapScreen extends HookConsumerWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mapScreenStatus = ref.watch(_mapScreenProvider).status;

    useEffect(
      () {
        ref.read(_mapScreenProvider.notifier).load();
      },
      const [],
    );

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          ref.read(_mapScreenProvider.notifier).load();
        },
        triggerMode: RefreshIndicatorTriggerMode.anywhere,
        child: mapScreenStatus.when(
          success: () => MapScreenSuccessState(
            testData: ref.watch(_mapScreenProvider).testData,
          ),
          failed: () => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Center(
                child: Text('Error'),
              ),
              ElevatedButton(
                onPressed: () => ref.read(_mapScreenProvider.notifier).load(),
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

class MapScreenSuccessState extends StatelessWidget {
  final Map<String, Object>? testData;

  const MapScreenSuccessState({
    Key? key,
    required this.testData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              MapScreenAppBar(
                showBackButton: false,
                title: StringValues.mapTitle,
              ),
              Expanded(
                child: CustomScrollView(
                  controller: ScrollController(),
                  slivers: [
                    const SliverToBoxAdapter(
                      child: SizedBox(height: 20),
                    ),
                    SliverToBoxAdapter(
                      child: MapScreenCard(
                        height: 410,
                        title: StringValues.mapAreas,
                        content: const MapChart(),
                      ),
                    ),
                    const SliverToBoxAdapter(
                      child: SizedBox(height: 16),
                    ),
                    SliverToBoxAdapter(
                      child: MapScreenCard(
                        height: 350,
                        title: StringValues.mapTop,
                        content: const TopList(),
                      ),
                    ),
                    const SliverToBoxAdapter(
                      child: SizedBox(height: 16),
                    ),
                    SliverToBoxAdapter(
                      child: MapScreenCard(
                        height: 680,
                        title: StringValues.mapRest,
                        content: const RestList(),
                      ),
                    ),
                    const SliverToBoxAdapter(
                      child: SizedBox(height: 20),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
