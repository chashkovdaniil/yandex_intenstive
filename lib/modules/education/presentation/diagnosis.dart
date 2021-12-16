import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;

import '../../../core/styles/app_theme.dart';

class DiagnosisPage extends StatelessWidget {
  const DiagnosisPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'diagnosisHeader'.tr(),
            style: AppTheme.educationHeader1,
            textAlign: TextAlign.start,
          ),
          const SizedBox(height: 25.0),
          Text(
            'diagnosisDescription'.tr(),
            style: AppTheme.educationSubtitleLight,
            softWrap: true,
          ),
          const SizedBox(height: 20.0),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'diagnosisWarningCaps'.tr(),
                  style: AppTheme.educationWarningRed,
                ),
                TextSpan(
                  text: 'diagnosisWarning'.tr(),
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
              'tel://${'diagnosisRussianPhoneNumber'.tr()}',
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
              child: Center(
                child: Text(
                  'diagnosisButtonText'.tr(),
                  style: AppTheme.educationSubtitleWhite,
                ),
              ),
            ),
          ),
        ],
      );
}
