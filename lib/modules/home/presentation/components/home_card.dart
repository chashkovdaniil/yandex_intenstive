import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  final Widget child;
  const HomeCard({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  // ignore: prefer_expression_function_bodies
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(17),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xffe4e4e4),
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: child,
    );
  }
}
