import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../../configs/colors.dart';
import 'animation_numbers_text.dart';
import 'mark_chart.dart';

class RatioRecoveryChart extends StatelessWidget {
  final int deaths;
  final int recovered;
  final int confirmed;

  /// Duration in milliseconds
  final int _animationDuration = 1000;
  final Curve _animationCurve = Curves.easeInCubic;

  const RatioRecoveryChart({
    Key? key,
    required this.deaths,
    required this.recovered,
    required this.confirmed,
  }) : super(key: key);

  double get percentRecovered {
    return recovered / confirmed * 100;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'ratioRecoveryChartTitle'.tr(),
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
            percent: recovered / confirmed,
            radius: 128,
            progressColor: AppColors.green,
            lineWidth: 8.0,
            animation: true,
            animationDuration: _animationDuration,
            curve: _animationCurve,
            backgroundColor: Colors.transparent,
            circularStrokeCap: CircularStrokeCap.round,
            center: AnimatedNumbersText(
              duration: Duration(milliseconds: _animationDuration),
              additionText: 'ratioRecoveryChartPercent'.tr(),
              from: 0,
              to: percentRecovered,
              fractionDigits: 2,
            ),
          ),
          footer: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MarkChart(
                color: AppColors.red,
                title: 'ratioRecoveryChartMarkChartDeath'.tr(),
                value: deaths,
              ),
              MarkChart(
                color: AppColors.green,
                title: 'ratioRecoveryChartMarkChartRecovered'.tr(),
                value: recovered,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
