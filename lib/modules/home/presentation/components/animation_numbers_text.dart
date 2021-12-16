import 'package:flutter/material.dart';

class AnimatedNumbersText extends StatelessWidget {
  final String additionText;
  final Duration duration;
  final double from;
  final double to;
  final int fractionDigits;
  final Curve curve;
  final TextStyle? textStyle;

  const AnimatedNumbersText({
    Key? key,
    this.additionText = '',
    this.duration = const Duration(seconds: 1),
    this.curve = Curves.easeInCubic,
    required this.from,
    required this.to,
    this.fractionDigits = 0,
    this.textStyle,
  }) : super(key: key);

  static String _prettifyNumber(int value) {
    var res = (value % 1000).toString();
    while ((value ~/= 1000) != 0) {
      res = (value % 1000).toString() + ',' + res;
    }
    return res;
  }

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      builder: (context, value, child) {
        return Text(
          _prettifyNumber(value.round()) + additionText,
          style: textStyle ?? Theme.of(context).textTheme.headline6,
        );
      },
      duration: duration,
      curve: curve,
      tween: Tween(
        begin: from,
        end: to,
      ),
    );
  }
}
