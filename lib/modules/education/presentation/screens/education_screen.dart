import 'package:easy_localization/easy_localization.dart';
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
              CustomAppBar(
                title: LocaleKeys.educationAppBarTitle.tr(),
                showBackButton: EasyLocalization.of(context).toString() == '.',
                showUserButton: false,
              ),
              const SizedBox(height: 20.0),
              Expanded(
                child: ListView(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(
                          left: 20.0,
                          right: 20.0,
                          bottom: 20.0,
                      ),
                      child: EducationPreview(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 20.0,
                          right: 20.0,
                          bottom: 20.0,
                      ),
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
