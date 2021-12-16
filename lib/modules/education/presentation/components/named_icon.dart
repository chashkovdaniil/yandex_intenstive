import 'package:flutter/material.dart';

class NamedIconData {
  final String title;
  final Widget image;

  const NamedIconData(this.title, this.image);
}

class NamedIconConfig {
  final TextStyle style;
  final EdgeInsets textPadding;

  const NamedIconConfig({
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
          data.image,
          const SizedBox(width: 4.0),
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
