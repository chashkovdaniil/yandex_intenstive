import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CurrentSituationGraph extends StatefulWidget {
  const CurrentSituationGraph({Key? key}) : super(key: key);

  @override
  _CurrentSituationGraphState createState() => _CurrentSituationGraphState();
}

class _CurrentSituationGraphState extends State<CurrentSituationGraph> {
  List<Color> gradientColors1 = [
    const Color(0xff96FFE1),
    const Color(0xff00C48C),
  ];
  List<Color> gradientColors2 = [
    const Color(0xffFFCBD3),
    const Color(0xffFF647C),
  ];

  @override
  Widget build(BuildContext context) => Stack(
        children: <Widget>[
          AspectRatio(
            aspectRatio: 1.70,
            child: LineChart(
              mainData(),
            ),
          ),
        ],
      );

  LineChartData mainData() => LineChartData(
        borderData: FlBorderData(
          show: false,
        ),
        gridData: FlGridData(
          show: false,
        ),
        titlesData: FlTitlesData(
          show: false,
        ),
        minX: 0,
        maxX: 11,
        minY: 0,
        maxY: 6,
        lineBarsData: [
          LineChartBarData(
            spots: const [
              FlSpot(0, 3),
              FlSpot(2.6, 2),
              FlSpot(4.9, 5),
              FlSpot(6.8, 3.1),
              FlSpot(8, 4),
              FlSpot(9.5, 3),
              FlSpot(11, 4),
            ],
            isCurved: true,
            colors: gradientColors1,
            barWidth: 5,
            isStrokeCapRound: true,
            dotData: FlDotData(
              show: false,
            ),
            belowBarData: BarAreaData(
              show: true,
              colors: gradientColors1
                  .map((color) => color.withOpacity(0.3))
                  .toList(),
            ),
          ),
          LineChartBarData(
            spots: const [
              FlSpot(0, 2),
              FlSpot(1.5, 1),
              FlSpot(3, 4),
              FlSpot(5.7, 1),
              FlSpot(7, 2),
              FlSpot(9, 1),
              FlSpot(10, 2),
              FlSpot(11, 2),
            ],
            isCurved: true,
            colors: gradientColors2,
            barWidth: 5,
            isStrokeCapRound: true,
            dotData: FlDotData(
              show: false,
            ),
            belowBarData: BarAreaData(
              show: true,
              colors: gradientColors2
                  .map((color) => color.withOpacity(0.5))
                  .toList(),
            ),
          ),
        ],
      );
}
