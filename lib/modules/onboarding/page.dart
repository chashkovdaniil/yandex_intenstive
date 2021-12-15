import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../configs/text_styles.dart';

class OnboardingPage extends StatelessWidget {
  final Image image;
  final String title;
  final String description;

  const OnboardingPage({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 4,
          child: Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: image,
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 47),
            child: Text(
              title,
              style: TextStyles.titleTextStyle,
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 1.69,
              left: 25,
              right: 25,
            ),
            child: Text(
              description,
              textAlign: TextAlign.center,
              style: TextStyles.descriptionTextStyle,
            ),
          ),
        ),
      ],
    );
  }
}
