import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import '../../../../configs/colors.dart';
import '../../../../core/domain/entities/country_covid_entity.dart';
import 'top_country_card.dart';

class TopList extends StatelessWidget {
  final List<CountryCovid> countriesCovid;

  const TopList(this.countriesCovid, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var logger = Logger(
      printer: PrettyPrinter(), // Use the PrettyPrinter to format and print log
    )..i(countriesCovid);
    countriesCovid.sort(
      (a, b) => a.covidReport.activeDiff.compareTo(b.covidReport.activeDiff),
    );
    logger.i(countriesCovid);
    return Column(
      children: [
        TopCountryCard(
          countryTitle: countriesCovid.elementAt(0).country.name,
          affectedValue:
              countriesCovid.elementAt(0).covidReport.active.toString(),
          recoveredValue:
              countriesCovid.elementAt(0).covidReport.active.toString(),
          countryProgress: 0.26,
          countryProgressColor: AppColors.primary,
        ),
        TopCountryCard(
          countryTitle: countriesCovid.elementAt(1).country.name,
          affectedValue:
              countriesCovid.elementAt(1).covidReport.active.toString(),
          recoveredValue:
              countriesCovid.elementAt(1).covidReport.active.toString(),
          countryProgress: 0.17,
          countryProgressColor: AppColors.green,
        ),
        TopCountryCard(
          countryTitle: countriesCovid.elementAt(1).country.name,
          affectedValue:
              countriesCovid.elementAt(2).covidReport.active.toString(),
          recoveredValue:
              countriesCovid.elementAt(2).covidReport.active.toString(),
          countryProgress: 0.09,
          countryProgressColor: AppColors.blue,
        ),
      ],
    );
  }
}
