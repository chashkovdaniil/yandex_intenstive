import 'package:flutter/material.dart';
import 'package:yandex_intensive/modules/config/config.dart';
import 'package:yandex_intensive/modules/onboarding/button.dart';

class OnboardingRightButton extends StatelessWidget {
  final VoidCallback onPressed;

  const OnboardingRightButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return OnboardingButton(
      onTap: onPressed,
      child: const Text(
        OnboardingButtonTexts.nextText,
        style: TextStyles.buttonTextStyle,
      ),
    );
  }
}
