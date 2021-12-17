import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../configs/colors.dart';
import '../../configs/text_styles.dart';
import '../../configs/theme_provider.dart';
import 'on_tap_opacity.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final bool showBackButton;
  final bool showUserButton;

  const CustomAppBar({
    Key? key,
    required this.title,
    this.showBackButton = true,
    this.showUserButton = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ColoredBox(
        color: Theme.of(context).appBarTheme.backgroundColor ??
            Theme.of(context).colorScheme.surface,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          height: 50,
          decoration: BoxDecoration(
            color: Theme.of(context).appBarTheme.backgroundColor,
            boxShadow: ThemeProvider.of(context).isDarkTheme
                ? null
                : [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.08),
                      spreadRadius: 5,
                      blurRadius: 3,
                      offset: const Offset(0.0, 0.9),
                    ),
                  ],
            border: ThemeProvider.of(context).isDarkTheme
                ? null
                : Border(
                    bottom: BorderSide(
                      color: AppColors.grey.withOpacity(0.6),
                    ),
                  ),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                child: showBackButton
                    ? IconButton(
                        icon: Icon(
                          CupertinoIcons.chevron_back,
                          color: Theme.of(context)
                              .appBarTheme
                              .titleTextStyle
                              ?.color, //Colors.black.withOpacity(0.4),
                          size: 16,
                        ),
                        onPressed: () => Navigator.maybePop(context),
                      )
                    : const SizedBox.shrink(),
                alignment: Alignment.centerLeft,
              ),
              Text(
                title,
                style: TextStyles.titleMap.copyWith(
                  color: Theme.of(context).appBarTheme.titleTextStyle?.color,
                ),
              ),
              Align(
                child: OnTapOpacityContainer(
                  padding: const EdgeInsets.all(8),
                  //TODO: what this button is for lmao ??
                  onTap: () {},
                  child: showUserButton
                      ? RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Icon(
                                  CupertinoIcons.person,
                                  color: AppColors.black.withOpacity(0.4),
                                  size: 22,
                                ),
                              ),
                            ],
                          ),
                        )
                      : const Text(''),
                ),
                alignment: Alignment.centerRight,
              ),
            ],
          ),
        ),
      );
}
