import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yandex_intensive/modules/general/app_bar.dart';
import 'package:yandex_intensive/modules/home/presentation/components/home_card.dart';
import 'package:yandex_intensive/modules/map/presentation/widgets/card.dart';
import 'package:yandex_intensive/modules/map/presentation/widgets/map.dart';
import 'package:yandex_intensive/modules/map/presentation/widgets/rest_list.dart';
import 'package:yandex_intensive/modules/map/presentation/widgets/top_list.dart';

import '../../../../configs/constants.dart';
import '../../../../core/domain/entities/country_covid_entity.dart';

class MapScreenSuccessData {
  final Map<String, CountryCovid> countriesStats;

  MapScreenSuccessData({
    required this.countriesStats,
  });
}

class MapScreenSuccessState extends HookConsumerWidget {
  final MapScreenSuccessData data;

  const MapScreenSuccessState({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus,
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CustomAppBar(
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
                        content: MapChart(MockData.mapData),
                      ),
                    ),
                    const SliverToBoxAdapter(
                      child: SizedBox(height: 16),
                    ),
                    SliverToBoxAdapter(
                      child: MapScreenCard(
                        height: 406,
                        title: StringValues.mapTop,
                        content: TopList(
                          List<CountryCovid>.from(
                            data.countriesStats.values,
                          ),
                        ),
                      ),
                    ),
                    const SliverToBoxAdapter(
                      child: SizedBox(height: 16),
                    ),
                    SliverToBoxAdapter(
                      child: HomeCard(
                        child: RestList(
                          List<CountryCovid>.from(
                            data.countriesStats.values,
                          ),
                        ),
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
      ),
    );
  }
}
