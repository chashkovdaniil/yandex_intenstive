import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../configs/constants.dart';
import '../widgets/app_bar.dart';
import '../widgets/card.dart';
import '../widgets/map.dart';
import '../widgets/rest_list.dart';
import '../widgets/top_list.dart';

class MapPage extends StatefulWidget {
  static const route = '/';

  const MapPage({Key? key}) : super(key: key);

  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              MapScreenAppBar(
                showBackButton: false,
                title: StringValues.mapTitle,
              ),
              Expanded(
                child: SingleChildScrollView(
                  key: const Key('ListViewKey'),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      MapScreenCard(
                        height: 410,
                        title: StringValues.mapAreas,
                        content: const MapChart(),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      MapScreenCard(
                        height: 350,
                        title: StringValues.mapTop,
                        content: const TopList(),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      MapScreenCard(
                        height: 680,
                        title: StringValues.mapRest,
                        content: const RestList(),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
