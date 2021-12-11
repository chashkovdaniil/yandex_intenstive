import 'package:flutter/material.dart';
import '../../../core/styles/app_theme.dart';
import 'components/prevention_item.dart';

class Prevention extends StatelessWidget {
  static const _data = [
    [
      'assets/images/clean_hands.svg',
      'Clean your hands often',
      'Wash hands often with soap and water for at least 20s',
    ],
    [
      'assets/images/wear_facemask.svg',
      'Wear a facemask',
      'You should wear facemask when you are around other people.',
    ],
    [
      'assets/images/avoid_touching_face.svg',
      'Avoid touching your face',
      'Hands touch many surfaces and can pick up viruses.',
    ],
    [
      'assets/images/avoid_close_contact.svg',
      'Avoid close contact',
      'Put distance between yourself and other people.',
    ],
  ];

  static const _iconWidth = 100.0;
  static const _iconHeight = 100.0;

  const Prevention({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        children: [
          const Text(
            'Basic protective measures against the new coronavirus',
            style: AppTheme.educationHeader1,
            softWrap: true,
          ),
          const SizedBox(height: 30.0),
          ..._data
              .map(
            (data) => [
              PreventionItem(
                icon: data[0],
                width: _iconWidth,
                height: _iconHeight,
                title: data[1],
                tip: data[2],
              ),
              const Divider(height: 45.0),
            ],
          )
              .reduce((a, b) {
            a.addAll(b);
            return a;
          })
        ],
      );
}
