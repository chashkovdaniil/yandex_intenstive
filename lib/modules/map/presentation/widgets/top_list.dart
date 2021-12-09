import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../configs/constants.dart';

class TopList extends StatelessWidget {
  const TopList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        children: [
          // SizedBox(
          //   height: 0,
          // ),
          // Container(
          //   width: 300,
          //   height: 30,
          //   color: Colors.white,
          //   child: CustomPaint(
          //     painter: CurvePainter(),
          //   ),
          // ),
          ...MockData.topCountryList,
        ],
      );
}
