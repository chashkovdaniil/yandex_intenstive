import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../configs/constants.dart';
import '../../configs/providers.dart';
import '../../generated/codegen_loader.g.dart';
import 'left_button.dart';
import 'page.dart';
import 'page_point.dart';
import 'right_button.dart';

class Onboarding extends HookConsumerWidget {
  static const _countPages = 3;
  final _images = [
    Assets.onboardingImage1,
    Assets.onboardingImage2,
    Assets.onboardingImage3,
  ];
  final _titles = [
    LocaleKeys.onboardingTitle1.tr(),
    LocaleKeys.onboardingTitle2.tr(),
    LocaleKeys.onboardingTitle3.tr(),
  ];
  final _descriptions = [
    LocaleKeys.onboardingDescription1.tr(),
    LocaleKeys.onboardingDescription2.tr(),
    LocaleKeys.onboardingDescription3.tr(),
  ];

  Onboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _pageController = useMemoized(
      () {
        return PageController();
      },
      const [],
    );

    final _currentPage = useState(0);

    void _changePage(int index, BuildContext context, WidgetRef ref) {
      if (index >= _countPages) {
        _pageController.dispose();
        ref.read(onboardingUseCaseProvider).closeOnboarding();
      } else {
        _currentPage.value = index;
        _pageController.animateToPage(
          _currentPage.value,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      }
    }

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onBackground,
      body: Column(
        children: [
          Expanded(
            flex: 6,
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) => _currentPage.value = index,
              children: [
                for (int i = 0; i < _images.length; ++i)
                  OnboardingPage(
                    image: _images[i],
                    title: _titles[i],
                    description: _descriptions[i],
                  ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: OnboardingLeftButton(
                    onPressed: () {
                      _pageController.dispose();
                      ref.read(onboardingUseCaseProvider).closeOnboarding();
                    },
                  ),
                ),
                const Spacer(),
                for (var i = 0; i < _countPages; ++i)
                  OnboardingPagePoint(i == _currentPage.value),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 25.0),
                  child: OnboardingRightButton(
                    onPressed: () =>
                        _changePage(_currentPage.value + 1, context, ref),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
