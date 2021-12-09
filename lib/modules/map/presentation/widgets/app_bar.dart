import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../configs/text_styles.dart';

import 'on_tap_opacity.dart';

class MapScreenAppBar extends StatelessWidget {
  final String? title;
  final bool showBackButton;

  const MapScreenAppBar({Key? key, this.title, this.showBackButton = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.08),
                spreadRadius: 5,
                blurRadius: 3,
                offset: const Offset(0.0, 0.75),
            ),
          ],
        border: const Border(
          bottom: BorderSide(
            color: Color(0xFFE5E5E5),
          ),
        ),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            child: OnTapOpacityContainer(
              padding: const EdgeInsets.all(8),
              onTap: () { Navigator.maybePop(context);},
              child: showBackButton
                  ? RichText(
                      text: TextSpan(
                        children: [
                          WidgetSpan(
                            child: Icon(
                              CupertinoIcons.chevron_back,
                              color: Colors.black.withOpacity(0.4),
                              size: 16,
                            ),
                          ),
                        ],
                      ),
                    )
                  : const Text(''),
            ),
            alignment: Alignment.centerLeft,
          ),
          Text(
            title!,
            style: TextStyles.titleMap,
          ),
          Align(
            child: OnTapOpacityContainer(
                padding: const EdgeInsets.all(8),
                onTap: () {},
                child: RichText(
                  text: TextSpan(
                    children: [
                      WidgetSpan(
                        child: Icon(
                          CupertinoIcons.person,
                          color: Colors.black.withOpacity(0.4),
                          size: 22,
                        ),
                      ),
                    ],
                  ),
                ),
            ),
            alignment: Alignment.centerRight,
          ),
        ],
      ),
    );
}
