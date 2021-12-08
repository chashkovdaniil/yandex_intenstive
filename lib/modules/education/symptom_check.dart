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
          ],
        ),
      )
    );
  }
}



// END
