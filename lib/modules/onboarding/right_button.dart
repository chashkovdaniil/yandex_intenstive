import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../configs/text_styles.dart';
import '../../generated/codegen_loader.g.dart';
import 'button.dart';

class OnboardingRightButton extends StatelessWidget {
  final VoidCallback onPressed;

  const OnboardingRightButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    EasyLocalization.of(context);
    return OnboardingButton(
      onTap: onPressed,
      child: Text(
        LocaleKeys.onBoardingNextText.tr(),
        style: TextStyles.buttonTextStyle,
      ),
    );
  }
}
