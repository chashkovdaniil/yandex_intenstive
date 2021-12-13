import 'package:flutter/material.dart';

import 'diagnosis.dart';
import 'prevention.dart';
import 'symptoms.dart';

class EducationPager extends StatelessWidget {
  const EducationPager({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
    // const PreventionPage();
      DefaultTabController(
        initialIndex: 1,
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('TabBar Widget'),
            bottom: const TabBar(
              tabs: <Widget>[
                Tab(text: 'Prevention'),
                Tab(text: 'Symptoms'),
                Tab(text: 'Diagnosis'),
              ],
            ),
          ),
          body: const Padding(
            padding: EdgeInsets.only(top: 30.0),
            child: TabBarView(
              children: <Widget>[
                PreventionPage(),
                SymptomCheck(),
                DiagnosisPage(),
              ],
            ),
          ),
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
  //             // SymptomCheck(),
  //             // DiagnosisPage(),
  //           ],
  //         )
  //       ],
  //     ),
  //   );
  // }
}
