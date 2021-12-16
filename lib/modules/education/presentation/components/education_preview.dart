import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../core/styles/app_theme.dart';
import '../../../../generated/codegen_loader.g.dart';

class EducationPreview extends StatelessWidget {
  const EducationPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        children: [
          Text(
            EasyLocalization.of(context).toString() == ''
                ? ''
                : 'educationPreviewHeader'.tr(),
            style: AppTheme.educationHeader1,
          ),
          const SizedBox(height: 30.0),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: LocaleKeys.educationPreviewDescriptionPreCaps.tr(),
                  style: AppTheme.educationSubtitleLight,
                ),
                TextSpan(
                  text: 'educationPreviewDescriptionCaps'.tr(),
                  style: AppTheme.educationSubtitleInternalBold,
                ),
                TextSpan(
                  text: 'educationPreviewDescriptionPostCaps'.tr(),
                  style: AppTheme.educationSubtitleLight,
                ),
              ],
            ),
          ),
        ],
      );
}
