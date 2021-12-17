import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../core/styles/app_theme.dart';

import '../../generated/codegen_loader.g.dart';
import 'button.dart';

class OnboardingLeftButton extends StatelessWidget {
  final VoidCallback onPressed;

  const OnboardingLeftButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    EasyLocalization.of(context);
    return OnboardingButton(
      onTap: onPressed,
      child: Text(
        LocaleKeys.onBoardingSkipText.tr(),
        style: AppTheme.buttonTextStyle.copyWith(
          color: Theme.of(context).colorScheme.onSurface,
        ),
      ),
    );
  }
}
