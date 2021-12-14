import 'package:flutter/material.dart';

import 'diagnosis.dart';
import 'prevention.dart';
import 'symptoms.dart';

class EducationPager extends StatelessWidget {
  const EducationPager({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => PageView(
        children: const [
          PreventionPage(),
          SymptomsPage(),
          DiagnosisPage(),
        ],
      );
}
