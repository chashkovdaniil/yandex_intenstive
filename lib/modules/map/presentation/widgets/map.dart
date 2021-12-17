import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_maps/maps.dart';

import '../../../../configs/colors.dart';
import '../../../../configs/constants.dart';
import '../helpers/model.dart';

class MapChart extends StatelessWidget {
  final List<MapModel> mapData;

  const MapChart(this.mapData, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
                StringValues.mapAreasMost,
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
                StringValues.mapAreasLess,
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: AppColors.white,
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
                  source: MapShapeSource.asset(
                    'assets/world_map.json',
                    shapeDataField: 'name',
                    dataCount: mapData.length,
                    primaryValueMapper: (int index) => mapData[index].country,
                    shapeColorValueMapper: (int index) =>
                        mapData[index].density,
                    shapeColorMappers: [
                      const MapColorMapper(
                        from: -1,
                        to: 100,
                        color: AppColors.affected1,
                      ),
                      const MapColorMapper(
                        from: 101,
                        to: 200,
                        color: AppColors.affected2,
                      ),
                      const MapColorMapper(
                        from: 201,
                        to: 300,
                        color: AppColors.affected3,
                      ),
                      const MapColorMapper(
                        from: 301,
                        to: 400,
                        color: AppColors.affected4,
                      ),
                      const MapColorMapper(
                        from: 401,
                        to: 500,
                        color: AppColors.affected5,
                      ),
                      const MapColorMapper(
                        from: 501,
                        to: 600,
                        color: AppColors.affected6,
                      ),
                    ],
                  ),
                  zoomPanBehavior: MapZoomPanBehavior(
                    focalLatLng: const MapLatLng(27.1751, 78.0421),
                    zoomLevel: 3,
                    toolbarSettings: const MapToolbarSettings(
                      position: MapToolbarPosition.topLeft,
                      iconColor: Colors.red,
                      itemBackgroundColor: Colors.green,
                      itemHoverColor: Colors.blue,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
