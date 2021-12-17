import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_donation_buttons/flutter_donation_buttons.dart';

import '../../../../configs/navigator.dart';
import '../../../../configs/shared_preferences_names.dart';
import '../../../../configs/text_styles.dart';
import '../../../../configs/theme_provider.dart';
import '../../../general/on_tap_opacity.dart';

class ItemDonate extends HookConsumerWidget {
  const ItemDonate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    return OnTapOpacityContainer(
      onTap: () {},
      child: Text(
        ThemeProvider.of(context).themeMode.name.tr(),
        style: TextStyles.titleSettingsScope.copyWith(
          color: Theme.of(context).colorScheme.onSurface,
        ),
      ),
    );
  }
}
