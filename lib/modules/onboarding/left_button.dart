import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../configs/constants.dart';
import '../../configs/text_styles.dart';
import 'button.dart';

class OnboardingLeftButton extends StatelessWidget {
  final VoidCallback onPressed;

  const OnboardingLeftButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnboardingButton(
      onTap: onPressed,
      child: Text(
        'onBoardingSkipText'.tr(),
        style: TextStyles.buttonTextStyle,
      ),
    );
  }
}
