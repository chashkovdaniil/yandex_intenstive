import 'package:flutter/cupertino.dart';
import 'package:yandex_intensive/modules/config/config.dart';

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
          color: _isActive
              ? OnboardingColors.activePointColor
              : OnboardingColors.notActivePointColor,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
