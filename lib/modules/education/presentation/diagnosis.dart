import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;
import '../../../configs/constants.dart';
import '../../../core/styles/app_theme.dart';

class DiagnosisPage extends StatelessWidget {
  const DiagnosisPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            StringValues.diagnosisHeader,
            style: AppTheme.educationHeader1,
            textAlign: TextAlign.start,
          ),
          const SizedBox(height: 25.0),
          const Text(
            StringValues.diagnosisDescription,
            style: AppTheme.educationSubtitleLight,
            softWrap: true,
          ),
          const SizedBox(height: 20.0),
          RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: StringValues.diagnosisWarningCaps,
                  style: AppTheme.educationWarningRed,
                ),
                TextSpan(
                  text: StringValues.diagnosisWarning,
                  style: AppTheme.educationWarning,
                ),
              ],
            ),
          ),
          const SizedBox(height: 20.0),
          ElevatedButton(
            style: AppTheme.educationButtonStyle,
            onPressed: () => url_launcher.launch(
              // TODO: а как же другие страны?
              'tel://${StringValues.diagnosisRussianPhoneNumber}',
            ),
            child: const Padding(
              padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
              child: Center(
                child: Text(
                  StringValues.diagnosisButtonText,
                  style: AppTheme.educationSubtitleWhite,
                ),
              ),
            ),
          ),
        ],
      );
}
