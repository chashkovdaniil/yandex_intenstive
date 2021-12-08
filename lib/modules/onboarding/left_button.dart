import 'package:flutter/material.dart';
import 'package:yandex_intensive/modules/onboarding/button.dart';

class OnboardingLeftButton extends StatelessWidget {
  final VoidCallback onPressed;

  const OnboardingLeftButton({
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return OnboardingButton(
      onTap: onPressed,
      child: const Text(
        "Skip",
        style: const TextStyle(
          fontSize: 12,
          color: Colors.black,
          fontFamily: "SF Pro Text"
        )
      )
    );
  }
}