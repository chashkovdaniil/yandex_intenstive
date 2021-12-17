import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:yandex_intensive/generated/codegen_loader.g.dart';

import '../../../../configs/text_styles.dart';
import '../../../general/on_tap_opacity.dart';

class ItemLanguage extends StatefulWidget {
  const ItemLanguage({Key? key}) : super(key: key);

  @override
  _ItemLanguageState createState() => _ItemLanguageState();
}

class _ItemLanguageState extends State<ItemLanguage> {
  late var langValue = LocaleKeys.english.tr();

  @override
  Widget build(BuildContext context) {
    langValue = context.locale.toString() == 'ru'
        ? LocaleKeys.russian.tr()
        : LocaleKeys.english.tr();
    return OnTapOpacityContainer(
      onTap: () => setState(() {
        if (langValue == LocaleKeys.english.tr()) {
          langValue = LocaleKeys.russian.tr();
          context.setLocale(const Locale('ru'));
        } else {
          langValue = LocaleKeys.english.tr();
          context.setLocale(const Locale('en'));
        }
      }),
      child: Text(
        langValue,
        style: TextStyles.titleSettingsScope.copyWith(
          color: Theme.of(context).colorScheme.onSurface,
        ),
      ),
    );
  }
}
