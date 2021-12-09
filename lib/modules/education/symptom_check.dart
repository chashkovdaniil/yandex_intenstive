import 'package:flutter/material.dart';



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
  {
    Widget iconTray(data, config)
      => Padding(
        padding: const EdgeInsets.only(
          left: 5.0, right:  5.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.from(data.map(
                (item) => NamedIcon(item, config),
          ),),
        ),
      );

    return Container(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Symptom Check',
              style: Theme.of(context).textTheme.headline3,
            ),
            const SizedBox(height: 20.0),
            Text(
              'Check you symptoms for',
              style: Theme.of(context).textTheme.caption!.copyWith(fontSize: 22.0),
            ),
            const SizedBox(height: 10.0),
            iconTray(_diseaseLegendData, const NamedIconConfig(35.0, 35.0)),
            const SizedBox(height: 30.0),
            const SymptomColumn(),
            const SizedBox(height: 30.0),
            Text(
              'Legend',
              style: Theme.of(context).textTheme.caption!.copyWith(fontSize: 22.0),
            ),
            const SizedBox(height: 10.0),
            iconTray(
              _rarityLegendData,
              NamedIconConfig(
                30.0, 30.0,
                Theme.of(context).textTheme.headline6!.copyWith(fontSize: 22.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



/*
 * Иконка с подписью; можно настраивать размер эконки и стиль текста
 */
class NamedIcon extends StatelessWidget
{
  final NamedIconData   data;
  final NamedIconConfig config;

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children: [
        Image.asset(data.asset, width: config.width, height: config.height),
        const SizedBox(width: 7.0),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
          child: Text(
              data.title,
              style: config.style ?? Theme.of(context).textTheme.headline5,
          ),
        ),
      ],
    );
  }

  const NamedIcon(this.data, this.config, {Key? key}): super(key: key);
}

class NamedIconData
{
  final String title;
  final String asset;

  const NamedIconData(this.title, this.asset);
}

class NamedIconConfig
{
  final double     width;
  final double     height;
  final TextStyle? style;

  const NamedIconConfig(this.width, this.height, [this.style]);
}



/*
 * Основная информация на страничке. Показывает, для каких болезней,
 * какие симптомы более характерны
 */
class SymptomColumn extends StatelessWidget
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



  const SymptomColumn({Key? key}): super(key: key);

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
      padding: const EdgeInsets.only(right: SymptomColumn._space),
      child: Image.asset(
        asset,
        width:  SymptomColumn._iconWidth,
        height: SymptomColumn._iconHeight,
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
      padding: SymptomColumn._linePadding,
      child: Row(
        children: [
          _SymptomColumnIcon(SymptomColumn._assets[items[0]]),
          _SymptomColumnIcon(SymptomColumn._assets[items[1]]),
          _SymptomColumnIcon(SymptomColumn._assets[items[2]]),
          Text(
            items[3],
            style: Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 19.0),
          ),
        ],
      ),
    );
}



// END