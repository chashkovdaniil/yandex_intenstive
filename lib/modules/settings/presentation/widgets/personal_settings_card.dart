import 'package:flutter/material.dart';

import '../../../../configs/colors.dart';
import '../../../../configs/text_styles.dart';
import '../../../../configs/theme_provider.dart';
import '../../../general/on_tap_opacity.dart';

class PersonalSettingsItemCard extends StatelessWidget {
  final IconData? icon;
  final String title;
  final Color? iconColor;

  const PersonalSettingsItemCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: OnTapOpacityContainer(
        onTap: () {},
        child: Container(
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: BorderRadius.circular(10),
            border: ThemeProvider.of(context).isDarkTheme
                ? null
                : Border.all(
                    color: AppColors.grey.withOpacity(0.6),
                  ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.08),
                spreadRadius: 3,
                blurRadius: 3,
                offset: const Offset(0.0, 0.9),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Container(
                  width: 46,
                  height: 46,
                  decoration: BoxDecoration(
                    color: iconColor,
                    borderRadius: BorderRadius.circular(30),
                    border: ThemeProvider.of(context).isDarkTheme
                        ? null
                        : Border.all(
                            color: AppColors.grey.withOpacity(0.6),
                          ),
                  ),
                  child: Icon(
                    icon,
                    color: Theme.of(context).colorScheme.surface,
                    size: 26,
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Text(
                  title,
                  style: TextStyles.titleSettingsItem.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
