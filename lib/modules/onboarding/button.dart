import 'package:flutter/cupertino.dart';

class OnboardingButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onTap;

   const OnboardingButton({
    Key? key,
    required this.child,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: child,
    );
  }
}
