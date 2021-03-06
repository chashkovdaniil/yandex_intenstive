import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;

import '../../../core/styles/app_theme.dart';
import '../../../generated/codegen_loader.g.dart';

class DiagnosisPage extends StatelessWidget {
  const DiagnosisPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: EasyLocalization.of(context).toString() == ''
            ? CrossAxisAlignment.start
            : CrossAxisAlignment.start,
        children: [
          Text(
            LocaleKeys.diagnosisHeader.tr(),
            style: AppTheme.educationHeader1.copyWith(
              color: Theme.of(context).colorScheme.onSurface,
            ),
            textAlign: TextAlign.start,
          ),
          const SizedBox(height: 15.0),
          Text(
            LocaleKeys.diagnosisDescription.tr(),
            style: AppTheme.educationSubtitleLight.copyWith(
              color: Theme.of(context).colorScheme.onSurface,
            ),
            softWrap: true,
          ),
          const SizedBox(height: 15.0),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: LocaleKeys.diagnosisWarningCaps.tr(),
                  style: AppTheme.educationWarningRed,
                ),
                TextSpan(
                  text: LocaleKeys.diagnosisWarning.tr(),
                  style: AppTheme.educationWarning.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20.0),
          ElevatedButton(
            style: AppTheme.educationButtonStyle,
            onPressed: () => url_launcher.launch(
              LocaleKeys.diagnosisUrlLauncherCommand.tr(),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
              child: Center(
                child: Text(
                  LocaleKeys.diagnosisButtonText.tr(),
                  style: AppTheme.educationSubtitleWhite.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
              ),
            ),
          ),
        ],
      );
}
