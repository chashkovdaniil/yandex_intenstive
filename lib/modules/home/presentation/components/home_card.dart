import 'package:flutter/material.dart';
import 'package:yandex_intensive/core/styles/app_theme.dart';

class HomeCard extends StatelessWidget {
  final Widget child;
  const HomeCard({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(17),
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xffe4e4e4),
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: child,
    );
  }
}
