import 'package:flutter/material.dart';

import '../../configs/constants.dart';
import '../../configs/text_styles.dart';
import 'button.dart';

class OnboardingRightButton extends StatelessWidget {
  final VoidCallback onPressed;

  const OnboardingRightButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return OnboardingButton(
      onTap: onPressed,
      child: Text(
        StringValues.onBoardingNextText,
        style: TextStyles.buttonTextStyle,
      ),
    );
  }
}
