import 'package:flutter/material.dart';

import 'components/home_card.dart';
import 'components/home_line_chart.dart';
import 'components/list_countries_confirmed.dart';
import 'components/ratio_recovered_chart.dart';

class HomeScreen extends StatelessWidget {
  static const route = '/';
  HomeScreen({Key? key}) : super(key: key);

  final Map<String, Object> testData = {
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
  };
  final List<List<double>> confirmedSpots = [
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
    [11, 266448563],
  ];
  final List<List<double>> recoveredSpots = [
    [0, 10000000],
    [1, 83963772],
    [2, 103409401],
    [3, 114428986],
    [4, 129525492],
    [5, 151801690],
    [6, 17105148],
    [7, 170000000],
    [8, 198291279],
    [9, 218382706],
    [10, 234285671],
    [11, 266448563],
  ];

  @override
  // ignore: prefer_expression_function_bodies
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
