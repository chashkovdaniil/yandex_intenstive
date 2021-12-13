import 'package:flutter/material.dart';
import 'package:yandex_intensive/modules/config/config.dart';
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
      child: const Text(
        OnboardingButtonTexts.skipText,
        style: TextStyles.buttonTextStyle,
      ),
    );
  }
}
