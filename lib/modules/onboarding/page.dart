import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  final String assetsUrl;
  final String title;
  final String description;

  const OnboardingPage({
    required this.assetsUrl,
    required this.title,
    required this.description
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            flex: 44273,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                assetsUrl,
                height: 260.8,
                width: 260.8,
              ),
            ),
        ),
        Expanded(
            flex: 12279,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                    title,
                    style: const TextStyle(
                      color: Color.fromRGBO(23, 23, 37, 1),
                      fontSize: 28,
                      fontFamily: "SF Pro Display"
                    )
                ),
              ],
            )
        ),
        Expanded(
          flex: 10169,
          child: Padding(
            padding: const EdgeInsets.only(top: 13.69, left: 25, right: 25),
            child: Text(
              description,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color.fromRGBO(153, 153, 153, 1),
                fontSize: 16,
                fontFamily: "SF Pro Display"
              )
            ),
          )
        ),
      ],
    );
  }
}