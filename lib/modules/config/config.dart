import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Assets {
  static final splashScreenImage = Image.asset(
      'assets/pictures/splash_screen.png',
      height: 179.68,
      width: 176.48,
  );
  static final onboardingImage1 = Image.asset(
    'assets/pictures/onboarding1.png',
    height: 260.8,
    width: 260.8,
  );
  static final onboardingImage2 = Image.asset(
    'assets/pictures/onboarding2.png',
    height: 260.8,
    width: 260.8,
  );
  static final onboardingImage3 = Image.asset(
    'assets/pictures/onboarding3.png',
    height: 260.8,
    width: 260.8,
  );
}

class SplashScreenTitles {
  static const splashScreenTitle = 'covstats';
  static const splashScreenBottomText =
      'Yandex intensive on Flutter in Sirius, 2021';
}

class SplashScreenColors {
  static const titleColor = Color.fromRGBO(
    255,
    100,
    124,
    1,
  );
}

class OnboardingTitles {
  static final onboardingTitle1 = 'Fever';
  static final onboardingTitle2 = 'Cough';
  static final onboardingTitle3 = 'Breathing Difficulty';
}

class OnboardingDescriprions {
  static final onboardingDescription1 =
      'He severity of COVID-19 symptoms can range from very mild to severe. Some people have no symptoms. People who are older or have existing chronic medical conditions.';
  static final onboardingDescription2 =
      'Such as heart or lung disease or diabetis, may be at higher risk of serious illness. This is similar to what is seen with other respiratory illnesses, such influenza.';
  static final onboardingDescription3 =
      'Contact your doctor or clinic right away if you have COVID-19 symptoms, you’ve been exposed to someone with COVID-19, or you live in or have traveled from an area with ongoing community spread of COVID-19.';
}

class OnboardingColors {
  static const notActivePointColor = const Color.fromRGBO(
    228,
    228,
    228,
    1,
  );
  static const activePointColor = const Color.fromRGBO(
    255,
    100,
    124,
    1,
  );
  static const titleColor = const Color.fromRGBO(
    23,
    23,
    37,
    1,
  );
  static const descriptionColor = const Color.fromRGBO(
    153,
    153,
    153,
    1,
  );
}

class TextStyles {
  static const splashScreenTitleTextStyle = TextStyle(
    fontSize: 40,
    fontFamily: "SF Pro Display",
    color: SplashScreenColors.titleColor,
    fontWeight: FontWeight.w600,
  );
  static const splashScreenBottomTextStyle = TextStyle(
    fontSize: 15,
    fontFamily: "SF Pro Display",
    color: Colors.black,
    fontWeight: FontWeight.w300,
  );
  static const buttonTextStyle = const TextStyle(
    fontSize: 12,
    color: Colors.black,
    fontFamily: "SF Pro Text",
    fontWeight: FontWeight.w500,
  );
  static const titleTextStyle = const TextStyle(
    color: OnboardingColors.titleColor,
    fontSize: 28,
    fontFamily: "SF Pro Display",
    fontWeight: FontWeight.w600,
  );
  static const descriptionTextStyle = const TextStyle(
    color: OnboardingColors.descriptionColor,
    fontSize: 16,
    letterSpacing: 0.5,
    fontFamily: "SF Pro Display",
    fontWeight: FontWeight.w300,
  );
}

class OnboardingButtonTexts {
  static const skipText = 'Skip';
  static const nextText = 'Next';
}
