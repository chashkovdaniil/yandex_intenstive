import 'package:flutter/material.dart';
import 'package:yandex_intensive/modules/config/config.dart';
import 'package:yandex_intensive/modules/onboarding/left_button.dart';
import 'package:yandex_intensive/modules/onboarding/page.dart';
import 'package:yandex_intensive/modules/onboarding/page_point.dart';
import 'package:yandex_intensive/modules/onboarding/right_button.dart';

const _backgroundColor = Colors.white;

class Onboarding extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  late final _pageController;
  int _currentPage = 0;
  static const _countPages = 3;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _changePage(int index, BuildContext context) {
    if (index >= _countPages) {
      _closePage(context);
    } else {
      setState(() => _currentPage = index);
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _closePage(BuildContext context) {
    Navigator.maybePop(context);
  }

  @override
  Widget build(BuildContext context) {
    final images = [
      Assets.onboardingImage1,
      Assets.onboardingImage2,
      Assets.onboardingImage3,
    ];
    final titles = [
      OnboardingTitles.onboardingTitle1,
      OnboardingTitles.onboardingTitle2,
      OnboardingTitles.onboardingTitle3,
    ];
    final descriptions = [
      OnboardingDescriprions.onboardingDescription1,
      OnboardingDescriprions.onboardingDescription2,
      OnboardingDescriprions.onboardingDescription3,
    ];
    return Scaffold(
      backgroundColor: _backgroundColor,
      body: Column(
        children: [
          Expanded(
            flex: 6,
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) => setState(() => _currentPage = index),
              children: [
                for (int i = 0; i < images.length; ++i)
                  OnboardingPage(
                    image: images[i],
                    title: titles[i],
                    description: descriptions[i],
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
                      onPressed: () => _closePage(context)),
                ),
                const Spacer(),
                for (var i = 0; i < _countPages; ++i)
                  OnboardingPagePoint(i == _currentPage),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 25.0),
                  child: OnboardingRightButton(
                      onPressed: () => _changePage(_currentPage + 1, context)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
