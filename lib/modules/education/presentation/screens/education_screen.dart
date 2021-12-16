import 'package:flutter/material.dart';

import '../../../../generated/codegen_loader.g.dart';
import '../../../general/app_bar.dart';
import '../components/education_preview.dart';
import '../components/education_tabs.dart';

class EducationScreen extends StatelessWidget {
  const EducationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              const CustomAppBar(
                showBackButton: false,
                title: 'Education',
                showUserButton: false,
              ),
              const SizedBox(height: 20.0),
              Expanded(
                child: ListView(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: EducationPreview(),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: EducationTabs(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
