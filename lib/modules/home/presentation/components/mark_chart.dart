import 'package:flutter/material.dart';

class MarkChart extends StatelessWidget {
  final Color color;
  final String title;
  final int value;

  const MarkChart({
    Key? key,
    required this.color,
    required this.title,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 15,
              height: 15,
              decoration: BoxDecoration(
                color: color,
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(width: 10),
            Text('$value'),
          ],
        ),
        const SizedBox(height: 5),
        Text(title),
      ],
    );
  }
}
