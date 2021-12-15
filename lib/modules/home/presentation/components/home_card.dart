import 'package:flutter/material.dart';

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
        // border: Border.all(
        // color: const Color(0xffe4e4e4),
        // ),
        borderRadius: BorderRadius.circular(15),
        color: Theme.of(context).colorScheme.surface,
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            color: const Color(0xff000000).withOpacity(0.1),
          ),
        ],
      ),
      child: child,
    );
  }
}
