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
            SymptomCheckNamedIconTray(),
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



// END
