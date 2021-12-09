import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../configs/colors.dart';
import 'line_chart.dart';

class CountryGraph extends StatelessWidget {
  const CountryGraph({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 16),
            child: Row(
              children: [
                Container(
                  height: 12,
                  width: 12,
                  decoration: BoxDecoration(
                    color: primary,
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                const Text(
                  'Death',
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: 12,
                  width: 12,
                  decoration: BoxDecoration(
                    color: green,
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                const Text(
                  'Affected',
                ),
              ],
            ),
          ),
          const CurrentSituationGraph(),
        ],
      );
}
