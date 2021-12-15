import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yandex_intensive/core/domain/entities/country_covid_entity.dart';

import '../../../../configs/app_routes.dart';
import '../../../../configs/colors.dart';
import '../../../search/presentation/widgets/search_field.dart';
import '../components/animation_numbers_text.dart';
import '../components/home_card.dart';
import '../components/home_line_chart.dart';
import '../components/list_countries_confirmed.dart';
import '../components/ratio_recovered_chart.dart';

class HomeScreenSuccessData {
  final Map<String, CountryCovid> countriesStats;
  final List<List<double>> confirmedSpots;
  final List<List<double>> recoveredSpots;
  final List<List<double>> deathsSpots;
  final List<List<double>> activeSpots;
  final int deaths;
  final int active;
  final int confirmed;
  final int recovered;
  final double fatalityRate;
  HomeScreenSuccessData({
    required this.countriesStats,
    required this.confirmedSpots,
    required this.recoveredSpots,
    required this.deathsSpots,
    required this.activeSpots,
    required this.deaths,
    required this.active,
    required this.confirmed,
    required this.recovered,
    required this.fatalityRate,
  });
}

class HomeScreenSuccessState extends HookConsumerWidget {
  final HomeScreenSuccessData data;
  const HomeScreenSuccessState({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final isHorizontalOrientation =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: CustomScrollView(
              clipBehavior: Clip.none,
              controller: ScrollController(),
              physics: const BouncingScrollPhysics(),
              slivers: [
                SliverAppBar(
                  backgroundColor: Colors.white,
                  elevation: 0,
                  floating: true,
                  flexibleSpace: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, AppRoutes.searchScreenRoute);
                    },
                    child: const SearchField(enabled: false),
                  ),
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(height: 10),
                ),
                SliverGrid.count(
                  crossAxisCount: isHorizontalOrientation ? 4 : 2,
                  mainAxisSpacing: 30,
                  crossAxisSpacing: 25,
                  childAspectRatio: 0.8,
                  children: [
                    HomeCard(
                      child: HomeLineChart(
                        title: 'Confirmed',
                        value: data.confirmed,
                        colors: const [AppColors.orange],
                        spots: data.confirmedSpots,
                        showAnimation: true,
                      ),
                    ),
                    HomeCard(
                      child: HomeLineChart(
                        title: 'Recovered',
                        value: data.recovered,
                        colors: const [AppColors.green],
                        showAnimation: true,
                        spots: data.recoveredSpots,
                      ),
                    ),
                    HomeCard(
                      child: HomeLineChart(
                        title: 'Deaths',
                        value: data.deaths,
                        colors: const [AppColors.red],
                        showAnimation: true,
                        spots: data.deathsSpots,
                      ),
                    ),
                    HomeCard(
                      child: HomeLineChart(
                        title: 'Active',
                        value: data.active,
                        colors: const [AppColors.red],
                        showAnimation: true,
                        spots: data.deathsSpots,
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
                      deaths: data.deaths,
                      recovered: data.recovered,
                      confirmed: data.confirmed,
                    ),
                  ),
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(height: 25),
                ),
                SliverToBoxAdapter(
                  child: HomeCard(
                    child: ListCountriesConfirmed(
                      countriesCovid: List<CountryCovid>.from(
                        data.countriesStats.values,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}