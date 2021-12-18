import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../configs/colors.dart';
import '../../../../core/domain/entities/country_covid_entity.dart';
import '../../../general/functions.dart';
import 'top_country_card.dart';

class TopList extends StatelessWidget {
  final List<CountryCovid> countriesCovid;

  const TopList(this.countriesCovid, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TopCountryCard(
          country: countriesCovid.elementAt(0),
          countryTitle: countriesCovid.elementAt(0).country.name,
          affectedValue:
              beautifyNumber(countriesCovid.elementAt(0).covidReport.confirmed),
          recoveredValue:
              beautifyNumber(countriesCovid.elementAt(0).covidReport.active),
          countryProgress: 0.26,
          countryProgressColor: AppColors.primary,
        ),
        TopCountryCard(
          country: countriesCovid.elementAt(1),
          countryTitle: countriesCovid.elementAt(1).country.name,
          affectedValue:
              beautifyNumber(countriesCovid.elementAt(1).covidReport.confirmed),
          recoveredValue:
              beautifyNumber(countriesCovid.elementAt(1).covidReport.active),
          countryProgress: 0.17,
          countryProgressColor: AppColors.green,
        ),
        TopCountryCard(
          country: countriesCovid.elementAt(2),
          countryTitle: countriesCovid.elementAt(2).country.name,
          affectedValue:
              beautifyNumber(countriesCovid.elementAt(2).covidReport.confirmed),
          recoveredValue:
              beautifyNumber(countriesCovid.elementAt(2).covidReport.active),
          countryProgress: 0.09,
          countryProgressColor: AppColors.blue,
        ),
      ],
    );
  }
}
