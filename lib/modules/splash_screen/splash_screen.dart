import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../configs/constants.dart';
import '../../configs/text_styles.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      //Navigator.push(context, MaterialPageRoute(builder: (context) => next_page()));
    });
    return Column(
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
              StringValues.splashScreenTitle,
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
                StringValues.splashScreenBottomText,
                style: TextStyles.splashScreenBottomTextStyle,
              ),
            ),
          ),
          flex: 3,
        ),
      ],
    );
  }
}
