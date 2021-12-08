import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_maps/maps.dart';
import 'package:yandex_intensive/modules/map/presentation/helpers/model.dart';

class S {
  static String get mapTitle => "World Wide map";
  static String get mapAreas => "COVID - 19 Affected Areas";
  static String get mapTop => "Top Countries";
  static String get mapRest => "Rest of the world";
}
class MockData{
  static List<Model> get mapData =>
      const <Model>[
        Model('India', 280),
        Model('United States of America', 190),
        Model('Kazakhstan', 37),
        Model('Italy', 201),
        Model('Korea', 512),
        Model('Japan', 335),
        Model('Cuba', 103),
        Model('China', 148)
      ];
  static MapShapeSource get mapSource =>
      MapShapeSource.asset(
          "assets/world_map.json",
          shapeDataField: "name",
          dataCount: mapData.length,
          primaryValueMapper: (int index) => mapData[index].country,
          shapeColorValueMapper: (int index) => mapData[index].density,
          shapeColorMappers: [
            MapColorMapper(from: -1, to: 300, color: Colors.tealAccent, text: 'less'),
            MapColorMapper(
                from: 301,
                to: 600,
                color: Colors.teal,
                text: 'more'),
          ]);
}