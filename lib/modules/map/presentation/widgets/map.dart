import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_maps/maps.dart';

import '../../../../configs/colors.dart';
import '../../../../configs/constants.dart';

class MapChart extends StatelessWidget {
  const MapChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, bottom: 16),
            child: Row(
              children: [
                Container(
                  height: 12,
                  width: 12,
                  color: affected5,
                ),
                const SizedBox(
                  width: 12,
                ),
                const Text(
                  'Most Affected',
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: 12,
                  width: 12,
                  color: affected2,
                ),
                const SizedBox(
                  width: 12,
                ),
                const Text(
                  'Less Affected',
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.grey.withOpacity(0.3),
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: SfMaps(
                layers: [
                  MapShapeLayer(
                    source: MockData.mapSource,
                    zoomPanBehavior: MockData.zoomPanBehavior,
                  )
                ],
              ),
            ),
          ),
        ],
      );
}
