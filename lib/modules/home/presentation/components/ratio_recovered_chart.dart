import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../../../generated/codegen_loader.g.dart';
import '../../../../configs/colors.dart';
import 'animation_numbers_text.dart';
import 'mark_chart.dart';

class RatioRecoveryChart extends StatelessWidget {
  final int active;
  final int deaths;
  final int recovered;
  final int confirmed;

  /// Duration in milliseconds
  final int _animationDuration = 1000;
  final Curve _animationCurve = Curves.easeInCubic;

  const RatioRecoveryChart({
    Key? key,
    required this.active,
    required this.deaths,
    required this.recovered,
    required this.confirmed,
  }) : super(key: key);

  double get percentRecovered {
    return deaths / confirmed * 100;
  }

  @override
  Widget build(BuildContext context) {
    EasyLocalization.of(context);
    return Column(
      children: [
        Text(
          LocaleKeys.ratioRecoveryChartTitle.tr(),
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(height: 10),
        CircularPercentIndicator(
          radius: 155.0,
          lineWidth: 10.0,
          animation: true,
          animationDuration: _animationDuration,
          curve: _animationCurve,
          percent: deaths / confirmed,
          circularStrokeCap: CircularStrokeCap.round,
          progressColor: AppColors.red,
          backgroundColor: Colors.transparent,
          center: CircularPercentIndicator(
            percent: active / confirmed,
            radius: 128,
            progressColor: AppColors.orange,
            lineWidth: 8.0,
            animation: true,
            animationDuration: _animationDuration,
            curve: _animationCurve,
            backgroundColor: Colors.transparent,
            circularStrokeCap: CircularStrokeCap.round,
            center: AnimatedNumbersText(
              duration: Duration(milliseconds: _animationDuration),
              additionText: LocaleKeys.ratioRecoveryChartPercent.tr(),
              from: 0,
              to: percentRecovered,
              fractionDigits: 2,
            ),
          ),
          footer: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MarkChart(
                color: AppColors.orange,
                title: LocaleKeys.homeScreenActive.tr(),
                value: active,
              ),
              MarkChart(
                color: AppColors.red,
                title: LocaleKeys.ratioRecoveryChartMarkChartDeath.tr(),
                value: deaths,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
