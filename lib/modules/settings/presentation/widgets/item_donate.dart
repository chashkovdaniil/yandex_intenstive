import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
