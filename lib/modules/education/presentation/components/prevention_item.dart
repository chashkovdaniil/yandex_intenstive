import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:path/path.dart' as path;
import '../../../../core/styles/app_theme.dart';


class PreventionItem extends StatelessWidget {
  final String icon;
  final double width;
  final double height;
  final String title;
  final String tip;

  const PreventionItem({
    required this.icon,
    required this.width,
    required this.height,
    required this.title,
    required this.tip,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context)
    => Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         path.extension(icon) == '.svg' ?
          SvgPicture.asset(icon, width: width, height: height) :
          Image.asset(icon, width: width, height: height),
        const SizedBox(width: 15.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
      ],
    );
}



// END