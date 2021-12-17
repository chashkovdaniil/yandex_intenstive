import 'package:flutter/material.dart';
import 'package:yandex_intensive/configs/theme_provider.dart';

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
  Widget build(BuildContext context) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 12),
        width: double.infinity,
        height: height,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(10),
          border: ThemeProvider.of(context).isDarkTheme
              ? null
              : Border.all(
                  color: AppColors.grey.withOpacity(0.6),
                ),
          boxShadow: ThemeProvider.of(context).isDarkTheme
              ? null
              : [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 3,
                    offset: const Offset(0.0, 0.9),
                  ),
                ],
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
                  child: Text(
                    title,
                    style: TextStyles.titleMap.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                ),
              ),
              content,
            ],
          ),
        ),
      );
}
