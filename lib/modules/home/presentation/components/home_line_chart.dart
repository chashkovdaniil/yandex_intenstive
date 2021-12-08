import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class HomeLineChart extends StatelessWidget {
  final String title;
  final int value;
  final List<Color>? colors;
  final List<List<double>> spots;

  HomeLineChart({
    Key? key,
    required this.title,
    required this.value,
    required this.spots,
    this.colors,
  }) : super(key: key);

  double maxValue = 0;

  @override
  Widget build(BuildContext context) {
    for (final spot in spots) {
      maxValue = spot[1] > maxValue ? spot[1] : maxValue;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        const SizedBox(height: 10),
        Text(
          '$value',
          style: Theme.of(context).textTheme.headline5,
        ),
        Expanded(
          child: LineChart(
            LineChartData(
              minX: 0,
              maxX: 11,
              minY: 0,
              maxY: maxValue,
              titlesData: FlTitlesData(
                show: false,
              ),
              borderData: FlBorderData(
                show: false,
              ),
              gridData: FlGridData(
                show: false,
              ),
              lineTouchData: LineTouchData(
                enabled: false,
              ),
              lineBarsData: [
                LineChartBarData(
                  spots: spots.map((e) => FlSpot(e[0], e[1])).toList(),
                  colors: colors,
                  isCurved: true,
                  barWidth: 5,
                  isStrokeCapRound: true,
                  dotData: FlDotData(
                    show: false,
                  ),
                  belowBarData: BarAreaData(
                    show: false,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
