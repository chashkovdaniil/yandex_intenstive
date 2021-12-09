import 'package:flutter/material.dart';



/*
 * Общий класс для страницы просмотра симптомов
 */
class SymptomCheck extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Symptom Check',
              style: Theme.of(context).textTheme.headline2,
            ),
            const SizedBox(height: 20.0),
            Text(
              'Check you symptoms for',
              style: Theme.of(context).textTheme.caption!.copyWith(fontSize: 22.0),
            ),
            const SizedBox(height: 10.0),
            SymptomCheckNamedIconTray(),
            const SizedBox(height: 30.0),
            SymptomColumn(),
          ],
        ),
      )
    );
  }
}



/*
 * Иконка с подписью
 */
class NamedIcon extends StatelessWidget
{
  final String     _title;
  final String     _icon;
  late  double     _width;
  late  double     _height;
  late  TextStyle? _textStyle;

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children: [
        Image.asset(_icon, width: _width, height: _height),
        const SizedBox(width: 7.0),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
          child: Text(
              _title,
              style: _textStyle ?? Theme.of(context).textTheme.headline5
          ),
        ),
      ],
    );
  }

  NamedIcon(
      this._title,
      this._icon, {
        required double width,
        required double height,
        TextStyle?      textStyle,
      }
  )
  {
    _width = width;
    _height = height;
    _textStyle = textStyle;
  }

}

class SymptomCheckNamedIconTray extends StatelessWidget
{
  static const   _iconWidth  = 40.0;
  static const   _iconHeight = 40.0;


  @override
  Widget build(BuildContext context)
  {
    var style = Theme.of(context)
      .textTheme.headline5!.copyWith(
        fontWeight: FontWeight.bold,
        fontSize: 25.0,
      );

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        NamedIcon(
          'Cold',
          'assets/images/cold@3x.png',
          width:     _iconWidth,
          height:    _iconHeight,
          textStyle: style,
        ),
        NamedIcon(
          'Flu',
          'assets/images/flu@3x.png',
          width:     _iconWidth,
          height:    _iconHeight,
          textStyle: style,
        ),
        NamedIcon(
          'COVID-19',
          'assets/images/covid@3x.png',
          width:     _iconWidth,
          height:    _iconHeight,
          textStyle: style,
        ),
      ],
    );
  }
}



class SymptomColumn extends StatelessWidget
{
  static const _iconWidth  = 35.0;
  static const _iconHeight = 35.0;
  static const _space      = 25.0;

  static const _data       = [
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
    'never.png',
    'rare.png',
    'sometimes.png',
    'common.png',
  ];


  @override
  Widget build(BuildContext context)
  {
    var children = <Widget>[];
    children.addAll([_line(context, null), const Divider()]);
    for (var item in _data)
    {
      children.addAll([ _line(context, item), const Divider()]);
    }
    return Column(children: children);
  }

  Widget _line(BuildContext context, List<dynamic>? items)
  {
    Widget icon(asset)
      => Padding(
        padding: const EdgeInsets.only(right: _space),
        child: Image.asset(
            'assets/images/$asset',
            width: _iconWidth,
            height: _iconHeight,
        ),
      );

    return Padding(
      padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
      child: Row(
        children: items == null ?
          [
            icon('cold_dark.png'),
            icon('flu_dark.png'),
            icon('covid_dark.png'),
          ] :
          [
            icon(_assets[items[0]]),
            icon(_assets[items[1]]),
            icon(_assets[items[2]]),
            Text(
                items[3],
                style: Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 20.0),
            ),
          ],
      ),
    );
  }
}



// END
