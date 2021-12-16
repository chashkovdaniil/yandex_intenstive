import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'animation_numbers_text.dart';

class HomeLineChart extends StatefulWidget {
  final String title;
  final int value;
  final List<Color>? colors;
  final List<List<double>> spots;
  final Duration duration;
  final bool showAnimation;

  const HomeLineChart({
    Key? key,
    required this.title,
    required this.value,
    required this.spots,
    this.duration = const Duration(seconds: 1),
    this.colors,
    this.showAnimation = false,
  }) : super(key: key);

  @override
  State<HomeLineChart> createState() => _HomeLineChartState();
}

class _HomeLineChartState extends State<HomeLineChart> {
  late bool _isStart;
  double get maxValue {
    var maxVal = 0.0;
    for (final spot in widget.spots) {
      maxVal = spot[1] > maxVal ? spot[1] : maxVal;
    }
    return maxVal;
  }

  LineChartData get beforeStartData => LineChartData(
        minX: 0,
        maxX: widget.spots.length.toDouble(),
        minY: 0,
        maxY: maxValue,
        titlesData: FlTitlesData(
          show: false,
        ),
        borderData: FlBorderData(
          show: false,
        ),
        gridData: FlGridData(
          show: true,
        ),
        lineTouchData: LineTouchData(
          enabled: true,
        ),
        lineBarsData: [
          LineChartBarData(
            spots: List<List<double>>.filled(widget.spots.length, [0.0, 0.0])
                .map((e) => FlSpot(e[0], e[1]))
                .toList(),
            colors: widget.colors,
            isCurved: true,
            barWidth: 1,
            isStrokeCapRound: true,
            dotData: FlDotData(
              show: false,
            ),
            belowBarData: BarAreaData(show: true, colors: widget.colors),
          ),
        ],
      );
  LineChartData get afterStartData => LineChartData(
        minX: 0,
        maxX: widget.spots.length.toDouble(),
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
          enabled: true,
          touchTooltipData: LineTouchTooltipData(
            tooltipBgColor: Theme.of(context).colorScheme.surface,
          ),
        ),
        lineBarsData: [
          LineChartBarData(
            spots: widget.spots.map((e) => FlSpot(e[0], e[1])).toList(),
            colors: widget.colors,
            isCurved: true,
            barWidth: 1,
            isStrokeCapRound: true,
            dotData: FlDotData(
              show: false,
            ),
            belowBarData: BarAreaData(
              show: false,
              colors: widget.colors,
            ),
          ),
        ],
      );

  @override
  void initState() {
    super.initState();
    _isStart = !widget.showAnimation;
    if (!_isStart) {
      Future.delayed(const Duration(milliseconds: 10), () {
        _isStart = true;
        setState(() {});
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: Theme.of(context).textTheme.headline5?.copyWith(
                  color: const Color(0xff999999),
                  fontSize: 22.0,
                ),
          ),
          const SizedBox(height: 10),
          AnimatedNumbersText(
            from: widget.showAnimation ? 0.0 : widget.value.toDouble(),
            to: widget.value.toDouble(),
            duration: widget.duration,
            textStyle: Theme.of(context).textTheme.headline5?.copyWith(
                  // color: const Color(0xff151522),
                  fontWeight: FontWeight.bold,
                ),
          ),
          Expanded(
            child: LineChart(
              _isStart ? afterStartData : beforeStartData,
              swapAnimationDuration: widget.duration,
              swapAnimationCurve: Curves.easeInCubic,
            ),
          ),
        ],
      ),
    );
  }
}
