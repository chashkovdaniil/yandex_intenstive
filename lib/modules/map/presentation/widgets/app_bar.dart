import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yandex_intensive/configs/text_styles.dart';

import 'on_tap_opacity.dart';

class MapScreenAppBar extends StatelessWidget {
  final String? title;
  final bool showBackButton;

  const MapScreenAppBar({Key? key, this.title, this.showBackButton = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: Color(0xFFE5E5E5),
          ),
        ),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            child: OnTapOpacityContainer(
              padding: EdgeInsets.all(8),
              onTap: () {},
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
                  : Text(''),
            ),
            alignment: Alignment.centerLeft,
          ),
          Text(
            title!,
            style: TextStyles.titleMap
          ),
          Align(
            child: OnTapOpacityContainer(
                padding: EdgeInsets.all(8),
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
                )),
            alignment: Alignment.centerRight,
          ),
        ],
      ),
    );
  }
}
