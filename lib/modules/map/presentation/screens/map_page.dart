import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../configs/constants.dart';
import '../widgets/app_bar.dart';
import '../widgets/card.dart';
import '../widgets/map.dart';
import '../widgets/rest_list.dart';
import '../widgets/top_list.dart';

class MapPage extends StatefulWidget {

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
                child: CustomScrollView(
                  controller: ScrollController(),
                  slivers: [
                    const SliverToBoxAdapter(
                      child: SizedBox(height: 20),
                    ),
                    SliverToBoxAdapter(
                      child: MapScreenCard(
                        height: 410,
                        title: StringValues.mapAreas,
                        content: const MapChart(),
                      ),
                    ),
                    const SliverToBoxAdapter(
                      child: SizedBox(height: 16),
                    ),
                    SliverToBoxAdapter(
                      child: MapScreenCard(
                        height: 406,
                        title: StringValues.mapTop,
                        content: const TopList(),
                      ),
                    ),
                    const SliverToBoxAdapter(
                      child: SizedBox(height: 16),
                    ),
                    SliverToBoxAdapter(
                      child: MapScreenCard(
                        height: 680,
                        title: StringValues.mapRest,
                        content: const RestList(),
                      ),
                    ),
                    const SliverToBoxAdapter(
                      child: SizedBox(height: 20),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
