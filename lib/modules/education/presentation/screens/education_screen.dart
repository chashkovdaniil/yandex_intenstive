import 'package:flutter/material.dart';

import '../components/education_preview.dart';
import '../education_pager.dart';

class EducationScreen extends StatelessWidget {
  const EducationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    body: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
          child: Column(
            children: const [
              EducationPreview(),
              SizedBox(height: 50.0),
              SizedBox(width: 400.0, height: 1000.0, child: EducationPager()),
            ],
          ),
        ),
  );
}
