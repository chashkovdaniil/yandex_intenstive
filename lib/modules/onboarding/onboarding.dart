import 'package:flutter/material.dart';
import 'package:yandex_intensive/modules/onboarding/left_button.dart';
import 'package:yandex_intensive/modules/onboarding/page.dart';
import 'package:yandex_intensive/modules/onboarding/page_point.dart';
import 'package:yandex_intensive/modules/onboarding/right_button.dart';

const _backgroundColor = Colors.white;

const _description1 = "He severity of COVID-19 symptoms can range from very mild to severe. Some people have no symptoms. People who are older or have existing chronic medical conditions.";
const _description2 = "Such as heart or lung disease or diabetis, may be at higher risk of serious illness. This is similar to what is seen with other respiratory illnesses, such influenza.";
const _description3 = "Contact your doctor or clinic right away if you have COVID-19 symptoms, you’ve been exposed to someone with COVID-19, or you live in or have traveled from an area with ongoing community spread of COVID-19.";

class Onboarding extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final _pageController = PageController();
  int _currentPage = 0;
  static const _countPages = 3;

  void _changePage(int index, BuildContext context) {
    if (index >= _countPages) {
      _closePage(context);
    }
    else {
      setState(() => _currentPage = index);
      _pageController.animateToPage(
          _currentPage,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut);
    }
  }

  void _closePage(BuildContext context) {
    Navigator.maybePop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: _backgroundColor,
        body: Column(
          children: [
            Expanded(
              flex: 66721,
              child: PageView(
                controller: _pageController,
                onPageChanged: (index) => setState(() => _currentPage = index),
                children: [
                  OnboardingPage(
                      assetsUrl: "assets/onboarding1.png",
                      title: "Fever",
                      description: _description1
                  ),
                  OnboardingPage(
                      assetsUrl: "assets/onboarding2.png",
                      title: "Cough",
                      description: _description2
                  ),
                  OnboardingPage(
                      assetsUrl: "assets/onboarding3.png",
                      title: "Breathing Difficulty",
                      description: _description3
                  )
                ],
              ),
            ),
            Expanded(
              flex: 14479,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(),
                  OnboardingLeftButton(onPressed: () => _closePage(context)),
                  const Spacer(),
                  for (var i = 0; i < _countPages; ++i)
                    OnboardingPagePoint(i == _currentPage),
                  const Spacer(),
                  OnboardingRightButton(onPressed: () => _changePage(_currentPage + 1, context)),
                  const Spacer(),
                ],
              )
            )
          ],
        )
    );
  }
}