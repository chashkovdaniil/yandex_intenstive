import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class RatioRecoveryChart extends StatelessWidget {
  final int deaths;
  final int recovered;
  final int confirmed;
  const RatioRecoveryChart({
    Key? key,
    required this.deaths,
    required this.recovered,
    required this.confirmed,
  }) : super(key: key);

  String get percentRecovered {
    return (recovered / confirmed * 100).toStringAsFixed(0);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Ratio of Recovery',
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(height: 10),
        CircularPercentIndicator(
          radius: 155.0,
          lineWidth: 10.0,
          animation: true,
          percent: deaths / confirmed,
          circularStrokeCap: CircularStrokeCap.round,
          progressColor: Colors.red,
          backgroundColor: Colors.transparent,
          center: CircularPercentIndicator(
            percent: recovered / confirmed,
            radius: 128,
            progressColor: Colors.green,
            lineWidth: 8.0,
            animation: true,
            backgroundColor: Colors.transparent,
            circularStrokeCap: CircularStrokeCap.round,
            center: Text(
              '$percentRecovered%',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          footer: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MarkChart(
                color: Colors.red,
                title: 'Deaths',
                value: deaths,
              ),
              MarkChart(
                color: Colors.green,
                title: 'Recovered',
                value: recovered,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class MarkChart extends StatelessWidget {
  final Color color;
  final String title;
  final int value;

  const MarkChart({
    Key? key,
    required this.color,
    required this.title,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 15,
              height: 15,
              decoration: BoxDecoration(
                color: color,
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(width: 10),
            Text('$value'),
          ],
        ),
        const SizedBox(height: 5),
        Text(title),
      ],
    );
  }
}
