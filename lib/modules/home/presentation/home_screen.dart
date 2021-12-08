import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'components/home_card.dart';
import 'components/home_line_chart.dart';
import 'components/list_countries_confirmed.dart';
import 'components/ratio_recovered_chart.dart';
import 'state/home_screen_state.dart';

final _homeScreenProvider =
    StateNotifierProvider<HomeScreenProvider, HomeScreenState>(
  (ref) => HomeScreenProvider(),
);

class HomeScreen extends ConsumerWidget {
  static const route = '/';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  // ignore: prefer_expression_function_bodies
  Widget build(BuildContext context, WidgetRef ref) {
    ref.read(_homeScreenProvider.notifier).load();

    switch (ref.watch(_homeScreenProvider).status) {
      case HomeScreenStateStatus.failed:
        return const Scaffold(
          body: Center(
            child: Text('Error'),
          ),
        );
      case HomeScreenStateStatus.success:
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
                        spots: ref.watch(_homeScreenProvider).confirmedSpots!,
                      ),
                    ),
                    HomeCard(
                      child: HomeLineChart(
                        title: 'Recovered',
                        value: 123456,
                        colors: const [Colors.greenAccent],
                        spots: ref.watch(_homeScreenProvider).recoveredSpots!,
                      ),
                    ),
                    HomeCard(
                      child: HomeLineChart(
                        title: 'Deaths',
                        value: 123456,
                        colors: const [Colors.redAccent],
                        spots: ref.watch(_homeScreenProvider).confirmedSpots!,
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
                      deaths:
                          (ref.watch(_homeScreenProvider).testData!['Global']
                              as Map<String, Object>)['TotalDeaths'] as int,
                      recovered:
                          (ref.watch(_homeScreenProvider).testData!['Global']
                              as Map<String, Object>)['TotalRecovered'] as int,
                      confirmed:
                          (ref.watch(_homeScreenProvider).testData!['Global']
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
                        ref.watch(_homeScreenProvider).testData!['Countries']
                            as Iterable<dynamic>,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      default:
        return const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
    }
  }
}
