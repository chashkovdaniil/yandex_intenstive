import 'package:flutter/material.dart';

import '../../../configs/constants.dart';
import '../../../core/styles/app_theme.dart';
import 'components/prevention_item.dart';

class PreventionPage extends StatelessWidget {
  static const _iconWidth = 85.0;
  static const _iconHeight = 85.0;

  const PreventionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        children: [
          const Text(
            StringValues.preventionHeader,
            style: AppTheme.educationHeader1,
            softWrap: true,
          ),
          const SizedBox(height: 30.0),
          ...StringValues.preventionData
              .asMap()
              .map(
                (index, data) => MapEntry(
                  index,
                  [
                    PreventionItem(
                      icon: data[0],
                      width: _iconWidth,
                      height: _iconHeight,
                      title: data[1],
                      tip: data[2],
                    ),
                    ...
                      index != StringValues.preventionData.length - 1 ?
                      [ const Divider(height: 45.0) ] : [],
                  ],
                ),
              )
              .values
              .toList()
              .reduce((a, b) {
            a.addAll(b);
            return a;
          })
        ],
      );
}
