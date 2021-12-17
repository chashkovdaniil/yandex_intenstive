import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../configs/constants.dart';
import '../../../core/styles/app_theme.dart';
import '../../../generated/codegen_loader.g.dart';
import 'components/prevention_item.dart';

class PreventionPage extends StatelessWidget {
  static const _iconWidth = 85.0;
  static const _iconHeight = 85.0;

  const PreventionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        children: [
          Text(
            EasyLocalization.of(context).toString() == ''
                ? LocaleKeys.preventionHeader.tr()
                : LocaleKeys.preventionHeader.tr(),
            style: AppTheme.educationHeader1.copyWith(
              color: Theme.of(context).colorScheme.onSurface,
            ),
            softWrap: true,
          ),
          const SizedBox(height: 30.0),
          ...StringValues.preventionData
              .map(
            (data) => [
              PreventionItem(
                icon: data[0],
                width: _iconWidth,
                height: _iconHeight,
                title: data[1],
                tip: data[2],
              ),
              ...data != StringValues.preventionData.last
                  ? [const Divider(height: 45.0)]
                  : [],
            ],
          )
              .reduce((a, b) {
            a.addAll(b);
            return a;
          })
        ],
      );
}
