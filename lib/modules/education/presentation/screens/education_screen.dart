import 'package:flutter/material.dart';
import 'package:yandex_intensive/modules/education/presentation/symptoms.dart';

import '../../../../core/styles/app_theme.dart';
import '../components/education_preview.dart';
import '../education_pager.dart';

class EducationScreen extends StatelessWidget {
  const EducationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
          body: ListView(
            padding: const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
            children: const [
              EducationPreview(),
              SizedBox(height: 50.0),
              SizedBox(height: 1000.0, child: EducationPager()),
              // EducationPager(),
            ],
          ),
        );
      //   body: NestedScrollView(
      //     headerSliverBuilder: (BuildContext context, bool scrolled) =>
      //         [const SliverAppBar()],
      //     body: Hero(
      //       tag: 'test',
      //       child: Builder(
      //         builder: (context) {
      //           var handle =
      //               NestedScrollView.sliverOverlapAbsorberHandleFor(context);
      //           // return const EducationPager();
      //           return CustomScrollView(body: const SymptomsPage());
      //         },
      //       ),
      //     ),
      //   ),
      // );
}
