import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../core/domain/entities/country_covid_entity.dart';
import '../../../../generated/codegen_loader.g.dart';
import '../../../general/app_bar.dart';
import '../widgets/card.dart';
import '../widgets/country_details.dart';
import '../widgets/country_graph.dart';

class CountryDetailsScreen extends StatefulWidget {
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
    final args = ModalRoute.of(context)!.settings.arguments as CountryCovid;

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            CustomAppBar(
              title:
                  '${args.country.name}${LocaleKeys.countryStatisticsTitle.tr()}',
            ),
            Expanded(
              child: CustomScrollView(
                controller: ScrollController(),
                slivers: [
                  const SliverToBoxAdapter(
                    child: SizedBox(height: 20),
                  ),
                  SliverToBoxAdapter(
                    child: CountryDetailsCard(
                      args,
                    ),
                  ),
                  const SliverToBoxAdapter(
                    child: SizedBox(height: 16),
                  ),
                  SliverToBoxAdapter(
                    child: MapScreenCard(
                      height: 350,
                      title: LocaleKeys.countryStatisticsGraphTitle.tr(),
                      content: const CountryGraph(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
