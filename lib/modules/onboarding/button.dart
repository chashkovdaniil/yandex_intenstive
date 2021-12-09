import 'package:flutter/cupertino.dart';

class OnboardingButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onTap;

  const OnboardingButton({
    required this.child,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: child,
    );
  }
}
