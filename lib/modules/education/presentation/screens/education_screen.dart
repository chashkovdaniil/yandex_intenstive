import 'package:flutter/material.dart';

import '../components/education_preview.dart';
import '../components/expandable_page_view.dart';
import '../diagnosis.dart';
import '../education_pager.dart';
import '../prevention.dart';
import '../symptoms.dart';

class EducationScreen extends StatelessWidget {
  const EducationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          body: ListView(
            children: const [
              Padding(
                padding: EdgeInsets.all(20.0),
                child: EducationPreview(),
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: EducationPager(),
              ),
              // Padding(
              //   padding: const EdgeInsets.all(20.0),
              //   child: ConstrainedBox(
              //     constraints: const BoxConstraints(maxHeight: 850.0),
              //     child: const ExpandablePageView(
              //       children: [
              //         PreventionPage(),
              //         SymptomsPage(),
              //         DiagnosisPage(),
              //       ],
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      );
}
