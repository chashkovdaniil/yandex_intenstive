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
        StringValues.onBoardingSkipText,
        style: TextStyles.buttonTextStyle,
      ),
    );
  }
}
