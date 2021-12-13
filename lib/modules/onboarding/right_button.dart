import 'package:flutter/material.dart';
import 'package:yandex_intensive/configs/constants.dart';
import 'package:yandex_intensive/configs/text_styles.dart';
import 'package:yandex_intensive/modules/onboarding/button.dart';

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
