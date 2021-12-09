import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yandex_intensive/configs/constants.dart';
import 'package:yandex_intensive/modules/map/presentation/widgets/card.dart';
import 'package:yandex_intensive/modules/map/presentation/widgets/country_details.dart';
import 'package:yandex_intensive/modules/map/presentation/widgets/country_graph.dart';

import '../widgets/app_bar.dart';

class CountryDetailsScreen extends StatefulWidget {
  static Route route() => CupertinoPageRoute(
        builder: (context) => const CountryDetailsScreen(),
      );

  const CountryDetailsScreen({Key? key}) : super(key: key);

  @override
  _CountryDetailsScreenState createState() => _CountryDetailsScreenState();
}

class _CountryDetailsScreenState extends State<CountryDetailsScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var country = 'China';
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            MapScreenAppBar(
              title: '$country - statistics',
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const CountryDetailsCard(),
                const SizedBox(
                  height: 16,
                ),
                MapScreenCard(
                  height: 350,
                  title: S.mapTop,
                  content: const CountryGraph(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
