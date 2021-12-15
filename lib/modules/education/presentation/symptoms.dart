import 'package:flutter/material.dart';

import '../../../configs/constants.dart';
import '../../../core/styles/app_theme.dart';

import 'components/named_icon.dart';
import 'components/named_icon_tray.dart';

class SymptomsPage extends StatelessWidget {
  static final _diseaseLegend = List<NamedIconData>.from(
    StringValues.diseaseLegendData.map(
      (item) => NamedIconData(item[0], item[1]),
    ),
  );

  static final _rarityLegend = List<NamedIconData>.from(
    StringValues.symptomRarityLegendData.map(
      (item) => NamedIconData(item[0], item[1]),
    ),
  );

  const SymptomsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            StringValues.symptomsHeader,
            style: AppTheme.educationHeader1,
          ),
          const SizedBox(height: 20.0),
          const Text(
            StringValues.symptomsSubtitle,
            style: AppTheme.educationSubtitleLight,
          ),
          const SizedBox(height: 10.0),
          NamedIconTray(
            _diseaseLegend,
            const NamedIconConfig(
              width: 35.0,
              height: 35.0,
              style: AppTheme.educationSubtitleBold,
              textPadding: EdgeInsets.only(top: 8.0),
            ),
          ),
          const SizedBox(height: 30.0),
          const _SymptomColumn(),
          const SizedBox(height: 30.0),
          const Text(
            StringValues.symptomsLegendSubtitle,
            style: AppTheme.educationSubtitle,
          ),
          const SizedBox(height: 10.0),
          NamedIconTray(
            _rarityLegend,
            const NamedIconConfig(
              width: 30.0,
              height: 30.0,
              style: AppTheme.educationSmallLight,
              textPadding: EdgeInsets.only(top: 2.0),
            ),
          ),
        ],
      );
}

/*
 * Основная информация на страничке. Показывает,
* для каких болезней какие симптомы более характерны
 */
class _SymptomColumn extends StatelessWidget {
  static const _iconWidth = 30.0;
  static const _iconHeight = 30.0;
  static const _space = 12.0;
  static const _linePadding = EdgeInsets.only(top: 3.0, bottom: 3.0);

  const _SymptomColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        children: [
          Padding(
            padding: _linePadding,
            child: Row(
              children: List.from(
                StringValues.symptomColumnLegendAssets.map(
                  (item) => _SymptomColumnIcon(item),
                ),
              ),
            ),
          ),
          const Divider(),
          ...StringValues.symptomColumnData
              .map((item) => [
                    _SymptomColumnLine(item),
                    ...item != StringValues.symptomColumnData.last
                        ? [const Divider()]
                        : []
                  ])
              .reduce((a, b) {
            a.addAll(b);
            return a;
          }),
        ],
      );
}

class _SymptomColumnIcon extends StatelessWidget {
  final String asset;

  const _SymptomColumnIcon(this.asset, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(right: _SymptomColumn._space),
        child: Image.asset(
          asset,
          width: _SymptomColumn._iconWidth,
          height: _SymptomColumn._iconHeight,
        ),
      );
}

class _SymptomColumnLine extends StatelessWidget {
  final List<String> items;

  const _SymptomColumnLine(this.items, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: _SymptomColumn._linePadding,
        child: Row(
          children: [
            _SymptomColumnIcon(StringValues.symptomColumnAssets[items[0]]!),
            _SymptomColumnIcon(StringValues.symptomColumnAssets[items[1]]!),
            _SymptomColumnIcon(StringValues.symptomColumnAssets[items[2]]!),
            Expanded(
              child: Text(
                items[3],
                style: AppTheme.educationSmallLight,
                softWrap: true,
              ),
            ),
          ],
        ),
      );
}
