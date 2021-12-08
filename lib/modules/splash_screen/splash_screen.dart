import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
            child: Image.asset(
              'assets/splash_screen.png',
              height: 179.68,
              width: 176.48,
            ),
          ),
          flex: 35543
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
            alignment: Alignment.bottomCenter,
          ),
          flex: 6757
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
          flex: 38900,
        ),
      ],
    );
  }
}