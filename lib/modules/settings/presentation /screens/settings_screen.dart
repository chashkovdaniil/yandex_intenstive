import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yandex_intensive/configs/text_styles.dart';
import 'package:yandex_intensive/modules/settings/presentation%20/widgets/item_theme.dart';
import 'package:yandex_intensive/modules/settings/presentation%20/widgets/settings_card.dart';

import '../../../general/app_bar.dart';

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
          children: const [
            CustomAppBar(
              showBackButton: false,
              title: 'Settings',
              showUserButton: false,
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'General',
                style: TextStyles.descriptionTextStyle,
              ),
            ),
            SettingsItemCard(
              content: ItemTheme(),
              title: 'Language',
              icon: CupertinoIcons.globe,
            ),
            SizedBox(
              height: 10,
            ),
            SettingsItemCard(
              content: ItemTheme(),
              title: 'Notifications',
              icon: CupertinoIcons.globe,
            ),
            SizedBox(
              height: 10,
            ),
            SettingsItemCard(
              content: ItemTheme(),
              title: 'Dark mode',
              icon: CupertinoIcons.globe,
            ),
            SizedBox(
              height: 10,
            ),
            SettingsItemCard(
              content: ItemTheme(),
              title: 'Help',
              icon: CupertinoIcons.globe,
            ),
          ],
        ),
      ),
    );
  }
}
