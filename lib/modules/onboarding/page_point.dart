import 'package:flutter/cupertino.dart';

import '../../configs/colors.dart';

class OnboardingPagePoint extends StatelessWidget {
  final bool _isActive;

  const OnboardingPagePoint(this._isActive, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        height: 8,
        width: 8,
        decoration: BoxDecoration(
          color: _isActive ? AppColors.primary : AppColors.grey,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
