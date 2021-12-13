import 'package:flutter/material.dart';

import 'diagnosis.dart';
import 'prevention.dart';
import 'symptoms.dart';

class EducationPager extends StatelessWidget {
  const EducationPager({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: PageView(
          controller: PageController(initialPage: 0),
          children: const [
            // Text('Prevention'),
            // Text('SymptomsPage'),
            // Text('Diagnosis'),
            PreventionPage(),
            SymptomsPage(),
            DiagnosisPage(),
          ],
        ),
      );

  // @override
  // Widget build(BuildContext context) {
  //   return DefaultTabController(
  //     initialIndex: 1,
  //     length: 3,
  //     child: Column(
  //       children: const [
  //         TabBar(
  //           tabs: [
  //             Tab(text: 'One'),
  //             Tab(text: 'Two'),
  //             Tab(text: 'Three'),
  //           ],
  //         ),
  //         TabBarView(
  //           children: <Widget>[
  //             Text('First tab'),
  //             Text('Second tab'),
  //             Text('Third tab'),
  //             // PreventionPage(),
  //             // SymptomsPage(),
  //             // DiagnosisPage(),
  //           ],
  //         )
  //       ],
  //     ),
  //   );
  // }
}
