import 'package:flutter/material.dart';
import '../../../core/styles/app_theme.dart';

class Diagnosis extends StatelessWidget {
  const Diagnosis({Key? key}) : super(key: key);

  static const _tip =
      'If you feel some symptoms or you are thinking that you may'
      'be infected. Please report your self so other people can'
      'be aware that someone who is in isolation is nearby them.';
  static const _warningCaps = 'COVSTATS';
  static const _warningText =
      ' gives everyone the opportunity to report their symptoms'
      'anonymously for the benefit of others';

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Report my Status',
            style: AppTheme.educationHeader1,
            textAlign: TextAlign.start,
          ),
          const SizedBox(height: 25.0),
          const Text(
            _tip,
            style: AppTheme.educationSubtitleLight,
            softWrap: true,
          ),
          const SizedBox(height: 20.0),
          RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: _warningCaps,
                  style: AppTheme.educationWarningRed,
                ),
                TextSpan(
                  text: _warningText,
                  style: AppTheme.educationWarning,
                ),
              ],
            ),
          ),
          const SizedBox(height: 20.0),
          ElevatedButton(
            style: AppTheme.educationButtonStyle,
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
              child: Center(
                child: Text(
                  'Please report your status',
                  style: AppTheme.educationSubtitleWhite,
                ),
              ),
            ),
          ),
        ],
      );
}
