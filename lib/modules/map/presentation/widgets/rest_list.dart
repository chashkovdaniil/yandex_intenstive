import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../configs/constants.dart';
import '../../../../configs/text_styles.dart';
import '../../../../core/domain/entities/country_covid_entity.dart';
import '../../../../generated/codegen_loader.g.dart';
import 'rest_country_card.dart';

class RestList extends StatelessWidget {
  final List<CountryCovid> countriesCovid;

  const RestList(this.countriesCovid, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    EasyLocalization.of(context);
    countriesCovid.sort(
      (a, b) => b.covidReport.confirmed.compareTo(a.covidReport.confirmed),
    );
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 10,
              left: 12,
            ),
            child: Text(LocaleKeys.mapRest.tr(), style: TextStyles.titleMap),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12, bottom: 4),
          child: Row(
            children: [
              Text(
                LocaleKeys.mapRest.tr(),
                textAlign: TextAlign.start,
                style: TextStyles.infoCountry,
              ),
            ],
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          padding: const EdgeInsets.all(5.5),
          itemCount: countriesCovid.length - 3,
          itemBuilder: _itemBuilder,
        ),
      ],
    );
  }

  Widget _itemBuilder(BuildContext context, int index) {
    return RestCountryCard(
      countryTitle: countriesCovid.elementAt(index).country.name,
      deathValue: countriesCovid.elementAt(index).covidReport.deaths.toString(),
      affectedValue:
      countriesCovid.elementAt(index).covidReport.confirmed.toString(),
      image: isoAlpha3Map[
      countriesCovid.elementAt(index).country.code.toUpperCase()]
          ?.toLowerCase() ??
          'fr',
    );
  }
}
