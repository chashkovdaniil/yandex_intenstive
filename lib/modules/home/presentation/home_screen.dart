import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
    final homeScreenStatus = ref.watch(_homeScreenProvider).status;

    useEffect(() {
      ref.read(_homeScreenProvider.notifier).load();
    }, [homeScreenStatus]);

    return homeScreenStatus.when(
      success: () => HomeScreenSuccessState(
        confirmedSpots: ref.watch(_homeScreenProvider).confirmedSpots!,
        recoveredSpots: ref.watch(_homeScreenProvider).recoveredSpots!,
        testData: ref.watch(_homeScreenProvider).testData!,
      ),
      failed: () => const Scaffold(
        body: Center(
          child: Text('Error'),
        ),
      ),
      loading: () => const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}

class HomeScreenSuccessState extends StatelessWidget {
  final List<List<double>> confirmedSpots;
  final List<List<double>> recoveredSpots;
  final Map<String, Object> testData;
  const HomeScreenSuccessState({
    Key? key,
    required this.confirmedSpots,
    required this.recoveredSpots,
    required this.testData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: CustomScrollView(
          controller: ScrollController(),
          slivers: [
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
                    spots: confirmedSpots,
                  ),
                ),
                HomeCard(
                  child: HomeLineChart(
                    title: 'Recovered',
                    value: 123456,
                    colors: const [Colors.greenAccent],
                    spots: recoveredSpots,
                  ),
                ),
                HomeCard(
                  child: HomeLineChart(
                    title: 'Deaths',
                    value: 123456,
                    colors: const [Colors.redAccent],
                    spots: confirmedSpots,
                  ),
                ),
                HomeCard(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Fatality rate'),
                      Text(
                        '0,7%',
                        style: Theme.of(context).textTheme.headline3,
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
                  deaths: (testData['Global']
                      as Map<String, Object>)['TotalDeaths'] as int,
                  recovered: (testData['Global']
                      as Map<String, Object>)['TotalRecovered'] as int,
                  confirmed: (testData['Global']
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
                    testData['Countries'] as Iterable<dynamic>,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
