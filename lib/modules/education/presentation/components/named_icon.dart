import 'package:flutter/material.dart';

class NamedIconData {
  final String title;
  final String asset;

  const NamedIconData(this.title, this.asset);
}

class NamedIconConfig {
  final double width;
  final double height;
  final TextStyle style;
  final EdgeInsets textPadding;

  const NamedIconConfig({
    required this.width,
    required this.height,
    required this.style,
    required this.textPadding,
  });
}

class NamedIcon extends StatelessWidget {
  final NamedIconData data;
  final NamedIconConfig config;

  const NamedIcon(this.data, this.config, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(data.asset, width: config.width, height: config.height),
          const SizedBox(width: 2.0),
          Padding(
            padding: config.textPadding,
            child: Text(
              data.title,
              style: config.style,
            ),
          ),
        ],
      );
}
