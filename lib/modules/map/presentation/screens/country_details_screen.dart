import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../configs/constants.dart';
import '../widgets/app_bar.dart';
import '../widgets/card.dart';
import '../widgets/country_details.dart';
import '../widgets/country_graph.dart';

class CountryDetailsScreen extends StatefulWidget {
  // TODO: add CountryModel field to get it from MapScreen
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
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              MapScreenAppBar(
                // TODO: transfer CountryModel from MapScreen and parse its fields for title and etc
                title: 'Country' + StringValues.countryStatisticsTitle,
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
                    title: StringValues.countryStatisticsGraphTitle,
                    content: const CountryGraph(),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
}
