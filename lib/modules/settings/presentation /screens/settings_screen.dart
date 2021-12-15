import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yandex_intensive/modules/settings/presentation%20/widgets/item_language.dart';

import '../../../../configs/colors.dart';
import '../../../../configs/text_styles.dart';
import '../../../general/app_bar.dart';
import '../widgets/general_settings_card.dart';
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
            const CustomAppBar(
              showBackButton: false,
              title: 'Settings',
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
                  'General',
                  style: TextStyles.titleSettingsScope,
                ),
              ),
            ),
            const GeneralSettingsItemCard(
              content: ItemLanguage(),
              title: 'Language',
              icon: CupertinoIcons.globe,
              iconColor: AppColors.green,
            ),
            const SizedBox(
              height: 10,
            ),
            const GeneralSettingsItemCard(
              content: ItemNotifications(),
              title: 'Notifications',
              icon: CupertinoIcons.bell,
              iconColor: AppColors.greenLight,
            ),
            const SizedBox(
              height: 10,
            ),
            const GeneralSettingsItemCard(
              content: ItemTheme(),
              title: 'Dark mode',
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
                  'Personal',
                  style: TextStyles.titleSettingsScope,
                ),
              ),
            ),
            const PersonalSettingsItemCard(
              title: 'Donate',
              icon: CupertinoIcons.bitcoin,
              iconColor: AppColors.orange,
            ),
            const SizedBox(
              height: 10,
            ),
            const PersonalSettingsItemCard(
              title: 'Help',
              icon: CupertinoIcons.shield_lefthalf_fill,
              iconColor: AppColors.grey,
            ),
            const SizedBox(
              height: 10,
            ),
            const PersonalSettingsItemCard(
              title: 'Terms & Conditions',
              icon: CupertinoIcons.archivebox,
              iconColor: AppColors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
