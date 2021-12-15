import 'package:flutter/material.dart';

import '../../../../configs/constants.dart';
import '../../../../core/styles/app_theme.dart';

class EducationPreview extends StatelessWidget {
  const EducationPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        children: [
          const Text(
            StringValues.educationPreviewHeader,
            style: AppTheme.educationHeader1,
          ),
          const SizedBox(height: 30.0),
          RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: StringValues.educationPreviewDescriptionPreCaps,
                  style: AppTheme.educationSubtitleLight,
                ),
                TextSpan(
                  text: StringValues.educationPreviewDescriptionCaps,
                  style: AppTheme.educationSubtitleInternalBold,
                ),
                TextSpan(
                  text: StringValues.educationPreviewDescriptionPostCaps,
                  style: AppTheme.educationSubtitleLight,
                ),
              ],
            ),
          ),
        ],
      );
}
