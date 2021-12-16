import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../configs/constants.dart';
import '../../../core/styles/app_theme.dart';
import '../../../generated/codegen_loader.g.dart';

import 'components/named_icon.dart';
import 'components/named_icon_tray.dart';

class SymptomsPage extends StatelessWidget {
  static final _rarityIcons = StringValues.symptomColumnAssets.map(
    (key, asset) => MapEntry(
      key,
      Image.asset(
        asset,
        width: 35.0,
        height: 35.0,
      ),
    ),
  );

  const SymptomsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: EasyLocalization.of(context).toString() == ''
            ? CrossAxisAlignment.start
            : CrossAxisAlignment.start,
        children: [
          Text(
            LocaleKeys.symptomsHeader.tr(),
            style: AppTheme.educationHeader1.copyWith(
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
          const SizedBox(height: 20.0),
          Text(
            LocaleKeys.symptomsSubtitle.tr(),
            style: AppTheme.educationSubtitleLight,
          ),
          const SizedBox(height: 10.0),
          NamedIconTray(
            StringValues.diseaseLegendData
                .map(
                  (item) => NamedIconData(
                    item[0],
                    Image.asset(
                      item[1],
                      width: 35.0,
                      height: 35.0,
                    ),
                  ),
                )
                .toList(),
            const NamedIconConfig(
              style: AppTheme.educationSubtitleBold,
              textPadding: EdgeInsets.only(top: 8.0),
            ),
          ),
          const SizedBox(height: 30.0),
          const _SymptomColumn(),
          const SizedBox(height: 30.0),
          Text(
            LocaleKeys.symptomsLegendSubtitle.tr(),
            style: AppTheme.educationSubtitle,
          ),
          const SizedBox(height: 10.0),
          NamedIconTray(
            StringValues.symptomRarityLegendData
                .map((item) => NamedIconData(item[0], _rarityIcons[item[1]]!))
                .toList(),
            const NamedIconConfig(
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
  static const linePadding = EdgeInsets.only(top: 3.0, bottom: 3.0);
  static const iconPadding = EdgeInsets.only(right: 8.0);

  const _SymptomColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        children: [
          Padding(
            padding: EasyLocalization.of(context).toString() == ''
                ? linePadding
                : linePadding,
            child: Row(
              children: StringValues.symptomColumnLegendAssets
                  .map(
                    (item) => Padding(
                      padding: iconPadding,
                      child: Image.asset(
                        item,
                        width: 35.0,
                        height: 35.0,
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
          ...StringValues.symptomColumnData
              .map(
            (item) => [
              const Divider(),
              Padding(
                padding: linePadding,
                child: _SymptomColumnLine(item),
              ),
            ],
          )
              .reduce((a, b) {
            a.addAll(b);
            return a;
          }),
        ],
      );
}

class _SymptomColumnLine extends StatelessWidget {
  final List<String> items;

  const _SymptomColumnLine(this.items, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
        children: [
          Padding(
            padding: _SymptomColumn.iconPadding,
            child: SymptomsPage._rarityIcons[items[0]],
          ),
          Padding(
            padding: _SymptomColumn.iconPadding,
            child: SymptomsPage._rarityIcons[items[1]],
          ),
          Padding(
            padding: _SymptomColumn.iconPadding,
            child: SymptomsPage._rarityIcons[items[2]],
          ),
          Expanded(
            child: Text(
              items[3],
              style: AppTheme.educationSmallLight,
              softWrap: true,
            ),
          ),
        ],
      );
}
