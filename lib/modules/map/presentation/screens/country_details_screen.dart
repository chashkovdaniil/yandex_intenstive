import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../general/app_bar.dart';
import '../helpers/country_details_screen_args.dart';
import '../widgets/card.dart';
import '../widgets/country_details.dart';
import '../widgets/country_graph.dart';

class CountryDetailsScreen extends StatefulWidget {
  // TODO: add CountryModel field to get it from MapScreen
  // static Route route() => CupertinoPageRoute(
  //       builder: (context) => const CountryDetailsScreen(),
  //     );

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
    EasyLocalization.of(context);
    final args =
        ModalRoute.of(context)!.settings.arguments as CountryDetailsScreenArgs;

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            CustomAppBar(
              // TODO: transfer CountryModel from MapScreen and parse its fields for title and etc
              title:
                  '${args.country.name}${'countryStatisticsTitle'.tr()}',
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
                  title: 'countryStatisticsGraphTitle'.tr(),
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
