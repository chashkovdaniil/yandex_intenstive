import 'package:flutter/cupertino.dart';

class OnboardingPagePoint extends StatelessWidget {
  final bool _isActive;

  const OnboardingPagePoint(this._isActive);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          height: 8,
          width: 8,
          decoration: BoxDecoration(
            color: _isActive ? Color.fromRGBO(255, 100, 124, 1) : Color.fromRGBO(228, 228, 228, 1),
            shape: BoxShape.circle
          ),
      ),
    );
  }
}