import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../configs/colors.dart';
import '../../../../configs/constants.dart';
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
              title: StringValues.settingsTitle,
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
                  StringValues.settingsSubTitle1,
                  style: TextStyles.titleSettingsScope.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              ),
            ),
            GeneralSettingsItemCard(
              content: const ItemLanguage(),
              title: StringValues.settingsItemLanguage,
              icon: CupertinoIcons.globe,
              iconColor: AppColors.green,
            ),
            const SizedBox(
              height: 10,
            ),
            GeneralSettingsItemCard(
              content: const ItemNotifications(),
              title: StringValues.settingsItemNotifications,
              icon: CupertinoIcons.bell,
              iconColor: AppColors.greenLight,
            ),
            const SizedBox(
              height: 10,
            ),
            //sharedPrefsProvider
            // GeneralSettingsItemCard(
            //   content: const ItemLanguage(),
            //   title: StringValues.settingsItemLanguage,
            //   icon: CupertinoIcons.globe,
            //   iconColor: AppColors.green,
            // ),
            GeneralSettingsItemCard(
              content: const ItemTheme(),
              title: StringValues.settingsItemDarkMode,
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
                  StringValues.settingsSubTitle2,
                  style: TextStyles.titleSettingsScope.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              ),
            ),
            PersonalSettingsItemCard(
              title: StringValues.settingsItemDonate,
              icon: CupertinoIcons.bitcoin,
              iconColor: AppColors.orange,
            ),
            const SizedBox(
              height: 10,
            ),
            PersonalSettingsItemCard(
              title: StringValues.settingsItemHelp,
              icon: CupertinoIcons.shield_lefthalf_fill,
              iconColor: AppColors.grey,
            ),
            const SizedBox(
              height: 10,
            ),
            PersonalSettingsItemCard(
              title: StringValues.settingsItemTerms,
              icon: CupertinoIcons.archivebox,
              iconColor: AppColors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
