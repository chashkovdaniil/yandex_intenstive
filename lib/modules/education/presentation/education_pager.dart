import 'package:flutter/material.dart';

import '../../../configs/colors.dart';
import '../../../configs/constants.dart';
import '../../../core/styles/app_theme.dart';
import 'components/expandable_page_view.dart';
import 'diagnosis.dart';
import 'prevention.dart';
import 'symptoms.dart';

class EducationPager extends StatelessWidget {
  const EducationPager({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SizedBox(
        height: 1200.0,
        child: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              toolbarHeight: 0.0,
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              bottom: PreferredSize(
                preferredSize: const Size(1500.0, 60.0),
                child: Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 46.0),
                      height: 5.0,
                      color: AppColors.educationLightGreen,
                    ),
                    TabBar(
                      labelStyle: AppTheme.educationSmall,
                      labelColor: AppTheme.educationSmall.color,
                      unselectedLabelColor: AppTheme.educationSmallLight.color,
                      indicatorColor: AppColors.green,
                      indicatorWeight: 5.0,
                      tabs: StringValues.educationPageTitles.map(
                        (item) => Tab(text: item),
                      ).toList(),
                    )
                  ],
                ),
              ),
            ),
            body: const Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: TabBarView(
                children: [
                  PreventionPage(),
                  SymptomsPage(),
                  DiagnosisPage(),
                ],
              ),
            ),
          ),
        ),
      );
}
