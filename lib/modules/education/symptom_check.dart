import 'package:flutter/material.dart';



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



class NamedIcon extends StatelessWidget
{
  final String _title;
  final String _icon;

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children: [
        Image.asset(_icon, width: 30.0, height: 30.0),
        const SizedBox(width: 7.0),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
          child: Text(_title, style: Theme.of(context).textTheme.headline5),
        ),
      ],
    );
  }

  const NamedIcon(this._title, this._icon);
}

class SymptomCheckNamedIconTray extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        NamedIcon('Cold', 'assets/images/cold@3x.png'),
        NamedIcon('Flu',  'assets/images/flu@3x.png'),
        NamedIcon('Cold', 'assets/images/covid@3x.png'),
      ],
    );
  }
}



class SymptomColumn extends StatelessWidget
{
  static const _iconWidth  = 30.0;
  static const _iconHeight = 30.0;
  static const _space      = 40.0;

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
