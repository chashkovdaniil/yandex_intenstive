import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../configs/colors.dart';
import '../../../../configs/text_styles.dart' show TextStyles;

class MapScreenCard extends StatelessWidget {
  final double height;
  final String title;
  final Widget content;

  const MapScreenCard({
    Key? key,
    required this.height,
    required this.title,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Container(
          width: double.infinity,
          height: height,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: AppColors.grey.withOpacity(0.3),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      left: 12,
                    ),
                    child: Text(title, style: TextStyles.titleMap),
                  ),
                ),
                content,
              ],
            ),
          ),
        ),
      );
}
