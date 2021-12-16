import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../configs/colors.dart';
import '../../../../configs/text_styles.dart';
import '../../../general/app_bar.dart';
import '../widgets/general_settings_card.dart';
import '../widgets/item_language.dart';
import '../widgets/item_notifications.dart';
import '../widgets/item_theme.dart';
import '../widgets/personal_settings_card.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            CustomAppBar(
              showBackButton: false,
              title: 'settingsTitle'.tr(),
              showUserButton: false,
            ),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 16, bottom: 12, top: 20),
                child: Text(
                  'settingsSubTitle1'.tr(),
                  style: TextStyles.titleSettingsScope,
                ),
              ),
            ),
            GeneralSettingsItemCard(
              content: const ItemLanguage(),
              title: 'settingsItemLanguage'.tr(),
              icon: CupertinoIcons.globe,
              iconColor: AppColors.green,
            ),
            const SizedBox(
              height: 10,
            ),
            GeneralSettingsItemCard(
              content: const ItemNotifications(),
              title: 'settingsItemNotifications'.tr(),
              icon: CupertinoIcons.bell,
              iconColor: AppColors.greenLight,
            ),
            const SizedBox(
              height: 10,
            ),
            GeneralSettingsItemCard(
              content: const ItemTheme(),
              title: 'settingsItemDarkMode'.tr(),
              icon: CupertinoIcons.moon,
              iconColor: AppColors.blue,
            ),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 16, bottom: 12, top: 20),
                child: Text(
                  'settingsSubTitle2'.tr(),
                  style: TextStyles.titleSettingsScope,
                ),
              ),
            ),
            PersonalSettingsItemCard(
              title: 'settingsItemDonate'.tr(),
              icon: CupertinoIcons.bitcoin,
              iconColor: AppColors.orange,
            ),
            const SizedBox(
              height: 10,
            ),
            PersonalSettingsItemCard(
              title: 'settingsItemHelp'.tr(),
              icon: CupertinoIcons.shield_lefthalf_fill,
              iconColor: AppColors.grey,
            ),
            const SizedBox(
              height: 10,
            ),
            PersonalSettingsItemCard(
              title: 'settingsItemTerms'.tr(),
              icon: CupertinoIcons.archivebox,
              iconColor: AppColors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
