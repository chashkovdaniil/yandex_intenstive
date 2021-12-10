import 'package:flutter/material.dart';

import '../../../core/styles/app_theme.dart';

import 'components/named_icon.dart';
import 'components/named_icon_tray.dart';



/*
 * Общий класс для страницы просмотра симптомов
 */
class SymptomCheck extends StatelessWidget
{
  static const _diseaseLegendData = [
    NamedIconData('Cold',     'assets/images/cold@3x.png'),
    NamedIconData('Flu',      'assets/images/flu@3x.png'),
    NamedIconData('COVID-19', 'assets/images/covid@3x.png'),
  ];

  static const _rarityLegendData = [
    NamedIconData('Common',    'assets/images/common.png'),
    NamedIconData('Sometimes', 'assets/images/sometimes.png'),
    NamedIconData('Rare',      'assets/images/rare.png'),
  ];

  const SymptomCheck({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context)
    => SingleChildScrollView(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Symptom Check',
            style: AppTheme.educationHeader1,
          ),
          SizedBox(height: 20.0),
          Text(
            'Check you symptoms for',
            style: AppTheme.educationSubtitleLight,
          ),
          SizedBox(height: 10.0),
          NamedIconTray(
            _diseaseLegendData,
            NamedIconConfig(35.0, 35.0, AppTheme.educationSubtitleBold),
          ),
          SizedBox(height: 30.0),
          _SymptomColumn(),
          SizedBox(height: 30.0),
          Text(
            'Legend',
            style: AppTheme.educationSubtitle,
          ),
          SizedBox(height: 10.0),
          NamedIconTray(
            _rarityLegendData,
            NamedIconConfig(
              30.0, 30.0,
              AppTheme.educationUsualLight,
            ),
          ),
        ],
      ),
    );
}



/*
 * Основная информация на страничке. Показывает,
 * для каких болезней, какие симптомы более характерны
 */
class _SymptomColumn extends StatelessWidget
{
  static const _iconWidth   = 35.0;
  static const _iconHeight  = 35.0;
  static const _space       = 25.0;
  static const _linePadding = EdgeInsets.only(top: 4.0, bottom: 4.0);

  static const _data = [
    [ 1, 1, 3, 'Shortness of breath'     ],
    [ 1, 3, 3, 'Fever'                   ],
    [ 2, 3, 3, 'Cough, chest discomfort' ],
    [ 2, 3, 0, 'Fatigue, weakness'       ],
    [ 1, 3, 0, 'Aches'                   ],
    [ 1, 3, 0, 'Chills'                  ],
    [ 1, 3, 0, 'Headache'                ],
    [ 3, 2, 0, 'Sore throat'             ],
    [ 3, 2, 0, 'Sneezing'                ],
    [ 3, 2, 0, 'Stuffy, runny nose'      ],
  ];

  static const _assets = [
    'assets/images/never.png',
    'assets/images/rare.png',
    'assets/images/sometimes.png',
    'assets/images/common.png',
  ];



  const _SymptomColumn({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context)
    => Column(
      children: [
        Padding(
          padding: _linePadding,
          child: Row(
            children: const [
              _SymptomColumnIcon('assets/images/cold_dark.png'),
              _SymptomColumnIcon('assets/images/flu_dark.png'),
              _SymptomColumnIcon('assets/images/covid_dark.png'),
            ],
          ),
        ),
        const Divider(),
        ..._data
          .map( (item) => [ _SymptomColumnLine(item), const Divider()] )
          .reduce( (a, b) { a.addAll(b); return a; } ),
      ],
    );
}

class _SymptomColumnIcon extends StatelessWidget
{
  final String asset;

  const _SymptomColumnIcon(this.asset, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
    => Padding(
      padding: const EdgeInsets.only(right: _SymptomColumn._space),
      child: Image.asset(
        asset,
        width:  _SymptomColumn._iconWidth,
        height: _SymptomColumn._iconHeight,
      ),
    );
}

class _SymptomColumnLine extends StatelessWidget
{
  final List<dynamic> items;

  const _SymptomColumnLine(this.items, {Key? key}): super(key: key);

  @override
  Widget build(BuildContext context)
    => Padding(
      padding: _SymptomColumn._linePadding,
      child: Row(
        children: [
          _SymptomColumnIcon(_SymptomColumn._assets[items[0]]),
          _SymptomColumnIcon(_SymptomColumn._assets[items[1]]),
          _SymptomColumnIcon(_SymptomColumn._assets[items[2]]),
          Text(
            items[3],
            style: AppTheme.educationUsualLight
          ),
        ],
      ),
    );
}



// END
