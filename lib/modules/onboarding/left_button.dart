import 'package:flutter/material.dart';
import 'package:yandex_intensive/configs/constants.dart';
import 'package:yandex_intensive/configs/text_styles.dart';
import 'package:yandex_intensive/modules/onboarding/button.dart';

class OnboardingLeftButton extends StatelessWidget {
  final VoidCallback onPressed;

  const OnboardingLeftButton({
    required this.onPressed,
  });

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
