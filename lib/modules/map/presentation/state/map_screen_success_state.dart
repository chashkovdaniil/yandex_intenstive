import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../configs/constants.dart';
import '../../../../core/domain/entities/country_covid_entity.dart';
import '../../../../generated/codegen_loader.g.dart';
import '../../../general/app_bar.dart';
import '../../../home/presentation/components/home_card.dart';
import '../widgets/card.dart';
import '../widgets/map.dart';
import '../widgets/rest_list.dart';
import '../widgets/top_list.dart';

class MapScreenSuccessData {
  late final List<CountryCovid> stats;

  MapScreenSuccessData(Map<String, CountryCovid> mapStats) {
    stats = mapStats.values.toList();
    stats.sort(
      (a, b) => b.covidReport.confirmed.compareTo(a.covidReport.confirmed),
    );
  }
}

class MapScreenSuccessState extends HookConsumerWidget {
  final MapScreenSuccessData data;

  const MapScreenSuccessState({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    EasyLocalization.of(context);
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus,
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CustomAppBar(
                showBackButton: false,
                title: LocaleKeys.mapTitle.tr(),
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
                        title: LocaleKeys.mapAreas.tr(),
                        content: MapChart(MockData.mapData),
                      ),
                    ),
                    const SliverToBoxAdapter(
                      child: SizedBox(height: 16),
                    ),
                    SliverToBoxAdapter(
                      child: MapScreenCard(
                        height: 406,
                        title: LocaleKeys.mapTop.tr(),
                        content: TopList(
                          data.stats,
                        ),
                      ),
                    ),
                    const SliverToBoxAdapter(
                      child: SizedBox(height: 16),
                    ),
                    SliverToBoxAdapter(
                      child: HomeCard(
                        child: RestList(data.stats),
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
