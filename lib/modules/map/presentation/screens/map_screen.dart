import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../configs/constants.dart';
import '../widgets/app_bar.dart';
import '../widgets/card.dart';
import '../widgets/map.dart';
import '../widgets/rest_list.dart';
import '../widgets/top_list.dart';

class MapScreen extends StatefulWidget {
  static const route = '/map';

  const MapScreen({Key? key}) : super(key: key);

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              MapScreenAppBar(
                showBackButton: false,
                title: S.mapTitle,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      MapScreenCard(
                        height: 410,
                        title: S.mapAreas,
                        content: const MapChart(),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      MapScreenCard(
                        height: 350,
                        title: S.mapTop,
                        content: const TopList(),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      MapScreenCard(
                        height: 680,
                        title: S.mapRest,
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
