import 'package:flutter/material.dart';

import 'named_icon.dart';

class NamedIconTray extends StatelessWidget {
  final List<NamedIconData> data;
  final NamedIconConfig config;

  const NamedIconTray(this.data, this.config, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SizedBox(width: double.infinity,
    child: Wrap(
          alignment: WrapAlignment.spaceAround,
          children: List.from(
            data.map(
              (item) => NamedIcon(item, config),
            ),
          ),
        ),
  );
}
