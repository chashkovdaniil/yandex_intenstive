import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

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
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 10,
              left: 12,
            ),
            child: Text(
              LocaleKeys.mapRest.tr(),
              style: TextStyles.titleMap.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Column(
          children: List.generate(
            countriesCovid.length - 3,
            (index) => Padding(
              padding: const EdgeInsets.only(
                left: 5.5,
                right: 5.5,
                top: 2.0,
                bottom: 2.0,
              ),
              child: _itemBuilder(context, index),
            ),
          ),
        ),
      ],
    );
  }


  Widget _itemBuilder(BuildContext context, int index) {
    return RestCountryCard(
      country: countriesCovid.elementAt(index + 3),
    );
  }
}
