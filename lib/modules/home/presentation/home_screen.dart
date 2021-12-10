import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'components/animation_numbers_text.dart';

import 'components/home_card.dart';
import 'components/home_line_chart.dart';
import 'components/list_countries_confirmed.dart';
import 'components/ratio_recovered_chart.dart';
import 'state/home_screen_state.dart';

final _homeScreenProvider =
    StateNotifierProvider<HomeScreenProvider, HomeScreenState>(
  (ref) => HomeScreenProvider(),
);

class HomeScreen extends HookConsumerWidget {
  static const route = '/';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeScreemStatus = ref.watch(_homeScreenProvider).status;

    useEffect(
      () {
        ref.read(_homeScreenProvider.notifier).load();
      },
      const [],
    );

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: RefreshIndicator(
          onRefresh: () async {
            await ref.read(_homeScreenProvider.notifier).load();
          },
          triggerMode: RefreshIndicatorTriggerMode.anywhere,
          child: homeScreemStatus.when(
            success: () => HomeScreenSuccessState(
              confirmedSpots: ref.watch(_homeScreenProvider).confirmedSpots,
              recoveredSpots: ref.watch(_homeScreenProvider).recoveredSpots,
              testData: ref.watch(_homeScreenProvider).testData,
            ),
            failed: () => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Center(
                  child: Text('Error'),
                ),
                ElevatedButton(
                  onPressed: () =>
                      ref.read(_homeScreenProvider.notifier).load(),
                  child: const Text('Обновить'),
                )
              ],
            ),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
          ),
        ),
      ),
    );
  }
}

class HomeScreenSuccessState extends StatelessWidget {
  final List<List<double>>? confirmedSpots;
  final List<List<double>>? recoveredSpots;
  final Map<String, Object>? testData;
  const HomeScreenSuccessState({
    Key? key,
    required this.confirmedSpots,
    required this.recoveredSpots,
    required this.testData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: CustomScrollView(
            controller: ScrollController(),
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverAppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                floating: true,
                flexibleSpace: TextField(
                  toolbarOptions: const ToolbarOptions(
                    copy: true,
                    paste: true,
                    cut: true,
                    selectAll: true,
                  ),
                  textInputAction: TextInputAction.search,
                  decoration: InputDecoration(
                    // suffixIcon: IconButton(
                    //   onPressed: () {},
                    //   icon: const Icon(Icons.close),
                    // ),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(
                        color: Colors.black.withOpacity(0.1),
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(
                        color: Colors.black.withOpacity(0.1),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(
                        color: Colors.black.withOpacity(0.1),
                      ),
                    ),
                  ),
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(height: 10),
              ),
              SliverGrid.count(
                crossAxisCount: 2,
                mainAxisSpacing: 30,
                crossAxisSpacing: 25,
                children: [
                  HomeCard(
                    child: HomeLineChart(
                      title: 'Confirmed',
                      value: 123456,
                      colors: const [Colors.orangeAccent],
                      spots: confirmedSpots!,
                      showAnimation: true,
                    ),
                  ),
                  HomeCard(
                    child: HomeLineChart(
                      title: 'Recovered',
                      value: 123456,
                      colors: const [Colors.greenAccent],
                      showAnimation: true,
                      spots: recoveredSpots!,
                    ),
                  ),
                  HomeCard(
                    child: HomeLineChart(
                      title: 'Deaths',
                      value: 123456,
                      colors: const [Colors.redAccent],
                      showAnimation: true,
                      spots: confirmedSpots!,
                    ),
                  ),
                  HomeCard(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Fatality rate'),
                        AnimatedNumbersText(
                          additionText: '%',
                          fractionDigits: 1,
                          from: 0,
                          to: 0.7,
                          textStyle: Theme.of(context).textTheme.headline3,
                        ),
                        const SizedBox.shrink(),
                      ],
                    ),
                  ),
                ],
              ),
              const SliverToBoxAdapter(
                child: SizedBox(height: 25),
              ),
              SliverToBoxAdapter(
                child: HomeCard(
                  child: RatioRecoveryChart(
                    deaths: (testData!['Global']
                        as Map<String, Object>)['TotalDeaths'] as int,
                    recovered: (testData!['Global']
                        as Map<String, Object>)['TotalRecovered'] as int,
                    confirmed: (testData!['Global']
                        as Map<String, Object>)['TotalConfirmed'] as int,
                  ),
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(height: 25),
              ),
              SliverToBoxAdapter(
                child: HomeCard(
                  child: ListCountriesConfirmed(
                    testData: List<Map<String, Object>>.from(
                      testData!['Countries'] as Iterable<dynamic>,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
