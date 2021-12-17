import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_donation_buttons/flutter_donation_buttons.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:yandex_intensive/modules/general/bottom_sheet.dart';

import '../../../../../generated/codegen_loader.g.dart';
import '../../../../configs/colors.dart';
import '../../../../configs/text_styles.dart';
import '../../../general/app_bar.dart';
import '../widgets/general_settings_card.dart';
import '../widgets/item_language.dart';
import '../widgets/item_notifications.dart';
import '../widgets/item_theme.dart';
import '../widgets/personal_settings_card.dart';

class TelegramAccount {
  final String name;
  final String nickname;
  TelegramAccount({
    required this.name,
    required this.nickname,
  });
}

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final _telegrams = [
    TelegramAccount(name: 'Василий', nickname: 'vasidmi'),
    TelegramAccount(name: 'Даниил', nickname: 'chashkovdaniil'),
    TelegramAccount(name: 'Арина', nickname: 'amoriodi'),
    TelegramAccount(name: 'Денис', nickname: 'dcherskiy'),
    TelegramAccount(name: 'Кирилл', nickname: 'mrchuvyzgalov'),
  ];

  @override
  Widget build(BuildContext context) {
    EasyLocalization.of(context);
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            CustomAppBar(
              showBackButton: false,
              title: LocaleKeys.settingsTitle.tr(),
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
                  LocaleKeys.settingsSubTitle1.tr(),
                  style: TextStyles.titleSettingsScope.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              ),
            ),
            GeneralSettingsItemCard(
              content: const ItemLanguage(),
              title: LocaleKeys.settingsItemLanguage.tr(),
              icon: CupertinoIcons.globe,
              iconColor: AppColors.green,
            ),
            const SizedBox(
              height: 10,
            ),
            GeneralSettingsItemCard(
              content: const ItemNotifications(),
              title: LocaleKeys.settingsItemNotifications.tr(),
              icon: CupertinoIcons.bell,
              iconColor: AppColors.greenLight,
            ),
            const SizedBox(
              height: 10,
            ),
            GeneralSettingsItemCard(
              content: const ItemTheme(),
              title: LocaleKeys.settingsItemDarkMode.tr(),
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
                  LocaleKeys.settingsSubTitle2.tr(),
                  style: TextStyles.titleSettingsScope.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              ),
            ),
            GeneralSettingsItemCard(
              title: LocaleKeys.settingsItemDonate.tr(),
              icon: CupertinoIcons.bitcoin,
              iconColor: AppColors.orange,
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  builder: (context) {
                    return AppBottomSheet(
                      builder: (BuildContext context) {
                        return ListView(
                          padding: const EdgeInsets.all(12),
                          children: const [
                            KofiButton(
                              kofiName: 'yandex_intensive_covid',
                              kofiColor: KofiColor.Red,
                            ),
                          ],
                          shrinkWrap: true,
                        );
                      },
                    );
                  },
                );
              },
            ),
            const SizedBox(
              height: 10,
            ),
            GeneralSettingsItemCard(
              title: LocaleKeys.settingsItemHelp.tr(),
              icon: CupertinoIcons.shield_lefthalf_fill,
              iconColor: AppColors.grey,
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  builder: (context) {
                    return AppBottomSheet(
                      builder: (BuildContext context) {
                        return ListView.builder(
                          padding: const EdgeInsets.all(12),
                          shrinkWrap: true,
                          itemCount: _telegrams.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              title: Text(_telegrams[index].name),
                              onTap: () async {
                                var url =
                                    'http://t.me/${_telegrams[index].nickname}';
                                if (await canLaunch(url)) {
                                  launch(url);
                                }
                              },
                            );
                          },
                        );
                      },
                    );
                  },
                );
              },
            ),
            const SizedBox(
              height: 10,
            ),
            PersonalSettingsItemCard(
              title: LocaleKeys.settingsItemTerms.tr(),
              icon: CupertinoIcons.archivebox,
              iconColor: AppColors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
