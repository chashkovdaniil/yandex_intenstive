import 'package:flutter/material.dart';
import '../../../core/styles/app_theme.dart';


class PreventionItem extends StatelessWidget {
  final String icon;
  final String title;
  final String tip;

  const PreventionItem({
    required this.icon,
    required this.title,
    required this.tip,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context)
    => Row(
      children: [
        Image.asset(icon),
        const SizedBox(width: 5.0),
        Column(
          children: [
            Text(title, style: AppTheme.educationSubtitleBold),
            const SizedBox(height: 7.0),
            Text(
              tip,
              style: AppTheme.educationSmallLight,
              overflow: TextOverflow.clip,
            ),
          ],
        )
      ]
    );
}



// END