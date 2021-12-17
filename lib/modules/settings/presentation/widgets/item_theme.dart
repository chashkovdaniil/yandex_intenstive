import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../configs/navigator.dart';

import '../../../../configs/shared_preferences_names.dart';
import '../../../../configs/text_styles.dart';
import '../../../../configs/theme_provider.dart';
import '../../../../core/domain/providers/shared_prefs.dart';
import '../../../general/on_tap_opacity.dart';

class ItemTheme extends HookConsumerWidget {
  const ItemTheme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final themeModeSharedPrefs = ref.watch(sharedPrefsProvider);
    return OnTapOpacityContainer(
      onTap: () {
        showModalBottomSheet(
          context: context,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          builder: (context) {
            return BottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              builder: (BuildContext context) {
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: ThemeMode.values.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () {
                        themeModeSharedPrefs.setString(
                          SharedPreferencesNames.themeMode,
                          ThemeMode.values.elementAt(index).name,
                        );
                        ThemeProvider.of(context).onThemeModeChanged(
                          ThemeMode.values.elementAt(index),
                        );
                        ref.watch(appNavigationManagerProvider).pop();
                      },
                      title: Text(
                        ThemeMode.values.elementAt(index).name,
                      ),
                    );
                  },
                );
              },
              onClosing: () {},
            );
          },
        );
      },
      child: Text(
        ThemeProvider.of(context).themeMode.name,
        style: TextStyles.titleSettingsScope.copyWith(
          color: Theme.of(context).colorScheme.onSurface,
        ),
      ),
    );
  }
}
