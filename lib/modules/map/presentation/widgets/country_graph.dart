import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../configs/colors.dart';
import 'line_chart.dart';

class CountryGraph extends StatelessWidget {
  const CountryGraph({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        children: [
          SizedBox(
            height: EasyLocalization.of(context).toString() == '' ? 20 : 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 16),
            child: Row(
              children: [
                Container(
                  height: 12,
                  width: 12,
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Text(
                  'countryStatisticsDeath'.tr(),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: 12,
                  width: 12,
                  decoration: BoxDecoration(
                    color: AppColors.green,
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Text(
                  'countryStatisticsAffected'.tr(),
                ),
              ],
            ),
          ),
          const CurrentSituationGraph(),
        ],
      );
}
