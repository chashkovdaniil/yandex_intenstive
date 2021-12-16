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
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 5,
                        blurRadius: 3,
                        offset: const Offset(0.0, 0.9),
                      ),
                    ],
                  ),
                  height: 12,
                  width: 12,
                ),
                const SizedBox(
                  width: 12,
                ),
                Text(
                  StringValues.mapAreasLess,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.affected2,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 5,
                        blurRadius: 3,
                        offset: const Offset(0.0, 0.9),
                      ),
                    ],
                  ),
                  height: 12,
                  width: 12,
                ),
                const SizedBox(
                  width: 12,
                ),
                Text(
                  StringValues.mapAreasMost,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: AppColors.grey.withOpacity(0.3),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.08),
                  spreadRadius: 5,
                  blurRadius: 3,
                  offset: const Offset(0.0, 0.9),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: SfMaps(
                layers: [
                  MapShapeLayer(
                    strokeColor: Theme.of(context).colorScheme.brightness ==
                            Brightness.dark
                        ? Theme.of(context).colorScheme.onSurface
                        : null,
                    source: MockData.mapSource,
                    // selectionSettings: MapSelectionSettings(
                    //   color: Theme.of(context).colorScheme.surface,
                    // ),
                    tooltipSettings: MapTooltipSettings(
                      color: Theme.of(context).colorScheme.surface,
                    ),
                    zoomPanBehavior: MockData.zoomPanBehavior,
                  )
                ],
              ),
            ),
          ),
        ],
      );
}
