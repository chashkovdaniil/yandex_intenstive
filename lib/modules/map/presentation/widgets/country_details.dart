import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yandex_intensive/configs/constants.dart';

import '../../../../../generated/codegen_loader.g.dart';
import '../../../../configs/colors.dart';
import '../../../../configs/text_styles.dart' show TextStyles;
import '../../../../configs/theme_provider.dart';
import '../../../../core/domain/entities/country_covid_entity.dart';
import '../../../general/functions.dart';
import '../../../general/navigation_views.dart';

class CountryDetailsCard extends StatelessWidget {
  final CountryCovid country;

  const CountryDetailsCard(this.country, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: EasyLocalization.of(context).toString() == ''
            ? const EdgeInsets.symmetric(horizontal: 12)
            : const EdgeInsets.symmetric(horizontal: 12),
        child: Container(
          width: double.infinity,
          height: 300,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: BorderRadius.circular(10),
            border: ThemeProvider.of(context).isDarkTheme
                ? null
                : Border.all(
                    color: AppColors.grey.withOpacity(0.6),
                  ),
            boxShadow: ThemeProvider.of(context).isDarkTheme
                ? null
                : [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 3,
                      offset: const Offset(0.0, 0.9),
                    ),
                  ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 12, left: 16),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'icons/flags/png/${isoAlpha3Map[country.country.code.toUpperCase()]?.toLowerCase() ?? 'fr'}.png',
                            package: 'country_icons',
                            width: 50,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 12, left: 16),
                        child: Text(
                          country.country.name,
                          textAlign: TextAlign.start,
                          style: TextStyles.titleCountryDetails.copyWith(
                            color: Theme.of(context).colorScheme.onSurface,
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 12),
                        child: IconButton(
                          icon: const Icon(
                            CupertinoIcons.bell,
                            color: AppColors.primary,
                            size: 24,
                          ),
                          onPressed: () => showAlertDialog(
                            context: context,
                            title: LocaleKeys.countryDetailsAlertTitle.tr(),
                            content: LocaleKeys.countryDetailsAlertContent.tr(),
                            cancelActionText:
                                LocaleKeys.countryDetailsAlertCancel.tr(),
                            defaultActionText:
                                LocaleKeys.countryDetailsAlertDefault.tr(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 80,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: AppColors.grey.withOpacity(0.3),
                      ),
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 10, left: 12, bottom: 6),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            beautifyNumber(country.covidReport.confirmed),
                            textAlign: TextAlign.start,
                            style: TextStyles.infectedValue,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: SizedBox(
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              beautifyNumber(country.covidReport.confirmed) +
                                  LocaleKeys.countryStatisticsInfectedCases
                                      .tr(),
                              textAlign: TextAlign.start,
                              style: TextStyles.infoCountry,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 68,
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 10, left: 12, bottom: 6),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            beautifyNumber(country.covidReport.deaths),
                            textAlign: TextAlign.start,
                            style: TextStyles.deathValue,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: SizedBox(
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              beautifyNumber(country.covidReport.deaths) +
                                  LocaleKeys.countryStatisticsDeathCases.tr(),
                              textAlign: TextAlign.start,
                              style: TextStyles.infoCountry,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
