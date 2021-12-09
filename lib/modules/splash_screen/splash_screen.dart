import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yandex_intensive/modules/assets/assets.dart';

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
          flex: 3
        ),
        const Expanded(
          child: Align(
            child: Text(
              "covstats",
              style: TextStyle(
                fontSize: 28,
                fontFamily: "SF Pro Display",
                color: Color.fromRGBO(255, 100, 124, 1)
              ),
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
                "Yandex intensive on Flutter in Sirius, 2021",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontFamily: "SF Pro Display"
                )
              ),
            ),
          ),
          flex: 3,
        ),
      ],
    );
  }
}