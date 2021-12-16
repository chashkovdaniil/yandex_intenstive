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
  Widget build(BuildContext context) => Row(
        children: [
          path.extension(icon) == '.svg'
              ? SvgPicture.asset(
                  icon,
                  width: width,
                  height: height,
                  clipBehavior: Clip.antiAlias,
                )
              : Image.asset(icon, width: width, height: height),
          const SizedBox(width: 20.0),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTheme.educationSubtitle.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                  softWrap: true,
                ),
                const SizedBox(height: 10.0),
                SizedBox(
                  child: Text(
                    tip,
                    style: AppTheme.educationSmallLight,
                    softWrap: true,
                  ),
                ),
              ],
            ),
          ),
        ],
      );
}
