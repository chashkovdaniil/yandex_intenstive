import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yandex_intensive/modules/config/config.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 2), () {
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
        const Expanded(
          child: Align(
            child: Text(
              SplashScreenTitles.splashScreenTitle,
              style: TextStyles.splashScreenTitleTextStyle,
            ),
            alignment: Alignment.center,
          ),
        ),
        const Expanded(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 55),
              child: Text(
                SplashScreenTitles.splashScreenBottomText,
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
