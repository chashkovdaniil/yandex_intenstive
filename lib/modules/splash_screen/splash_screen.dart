import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../configs/constants.dart';
import '../../configs/providers.dart';
import '../../configs/text_styles.dart';
import '../../core/styles/app_theme.dart';
import '../../generated/codegen_loader.g.dart';

class SplashScreen extends HookConsumerWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    EasyLocalization.of(context);
    useEffect(
      () {
        ref.read(splashUseCaseProvider).init();
      },
      const [],
    );
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Assets.splashScreenImage,
            ),
            flex: 3,
          ),
          Expanded(
            child: Align(
              child: Text(
                LocaleKeys.splashScreenTitle.tr(),
                style: TextStyles.splashScreenTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 55),
                child: Text(
                  LocaleKeys.splashScreenBottomText.tr(),
                  style: AppTheme.splashScreenBottomTextStyle.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              ),
            ),
            flex: 3,
          ),
        ],
      ),
    );
  }
}
