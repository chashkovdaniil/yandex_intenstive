import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../configs/colors.dart';
import '../../../../configs/text_styles.dart';
import '../../../map/presentation/widgets/on_tap_opacity.dart';

class SettingsItemCard extends StatelessWidget {
  final Widget content;
  final IconData? icon;
  final String title;

  const SettingsItemCard({
    Key? key,
    required this.content,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: OnTapOpacityContainer(
          onTap: () {},
          child: Container(
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: AppColors.grey.withOpacity(0.6),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Icon(
                    icon,
                    size: 26,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Text(
                    title,
                    style: TextStyles.titleSettingsItem,
                  ),
                  const Spacer(),
                  content,
                ],
              ),
            ),
          ),
        ),
      );
}
