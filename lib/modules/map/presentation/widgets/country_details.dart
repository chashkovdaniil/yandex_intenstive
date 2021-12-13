import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../configs/colors.dart';
import '../../../../configs/constants.dart';
import '../../../../configs/text_styles.dart' show TextStyles;
import '../../../general/navigation_views.dart';

class CountryDetailsCard extends StatelessWidget {
  // TODO: add CountryModel field to get it from MapScreen
  const CountryDetailsCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Container(
          width: double.infinity,
          height: 240,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: AppColors.grey.withOpacity(0.6),
            ),
            boxShadow: [
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
                            'icons/flags/png/ch.png',
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
                          // TODO: transfer CountryModel from MapScreen and parse its fields for title and etc
                          'China',
                          textAlign: TextAlign.start,
                          style: TextStyles.titleCountryDetails,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 12, right: 16),
                        child: IconButton(
                          icon: const Icon(
                            CupertinoIcons.bell,
                            color: AppColors.primary,
                            size: 24,
                          ),
                          onPressed: () => showAlertDialog(
                            context: context,
                            title: 'Enable notification',
                            content:
                                'Enable notification so you can always be up to date with new information.',
                            cancelActionText: 'Later',
                            defaultActionText: 'Enable now',
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
                    color: AppColors.white,
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
                            // TODO: transfer CountryModel from MapScreen and parse its fields for title and etc
                            '80,174',
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
                              // TODO: transfer CountryModel from MapScreen and parse its fields for title and etc
                              '1,478' +
                                  StringValues.countryStatisticsInfectedCases,
                              textAlign: TextAlign.start,
                              style: TextStyles.infoCountry,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 68,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 10, left: 12, bottom: 6),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            '2,915',
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
                              '550' + StringValues.countryStatisticsDeathCases,
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
