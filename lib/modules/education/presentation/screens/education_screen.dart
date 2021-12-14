import 'package:flutter/material.dart';

import '../components/education_preview.dart';
import '../education_pager.dart';

class EducationScreen extends StatelessWidget {
  const EducationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          body: ListView(
            children: [
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: EducationPreview(),
              ),
              const SizedBox(height: 30.0),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxHeight: 850.0),
                  child: const EducationPager(),
                ),
              ),
            ],
          ),
        ),
      );
}
