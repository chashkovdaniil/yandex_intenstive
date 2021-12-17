import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../generated/codegen_loader.g.dart';
import '../../../../configs/colors.dart';
import '../../../../core/domain/entities/country_covid_entity.dart';
import '../../../general/functions.dart';

class ListCountriesConfirmed extends StatelessWidget {
  final List<CountryCovid> countriesCovid;

  const ListCountriesConfirmed({
    Key? key,
    required this.countriesCovid,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    EasyLocalization.of(context);
    return Column(
      children: [
        ListTile(
          title: Text(LocaleKeys.listCountriesConfirmedTitle.tr()),
          trailing: Text(LocaleKeys.listCountriesConfirmedTrailing.tr()),
        ),
        ...List.generate(
          countriesCovid.length,
          (index) => ListTile(
            title: Text(countriesCovid[index].country.name),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  beautifyNumber(countriesCovid[index].covidReport.confirmed),
                ),
                const SizedBox(width: 10),
                countriesCovid[index].covidReport.confirmedDiff > 0
                    ? const Icon(
                        Icons.trending_up,
                        color: AppColors.red,
                      )
                    : const Icon(
                        Icons.trending_down,
                        color: AppColors.green,
                      ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
