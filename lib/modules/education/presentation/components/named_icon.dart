/*
 * Иконка, рядом с которой находится текст; можно
 * задать размер иконки, и стиль текста
 */

import 'package:flutter/material.dart';



class NamedIconData
{
  final String title;
  final String asset;

  const NamedIconData(this.title, this.asset);
}

class NamedIconConfig
{
  final double     width;
  final double     height;
  final TextStyle? style;

  const NamedIconConfig(this.width, this.height, [this.style]);
}

/*
 * Класс представляет из себя иконку, рядом с
 * которой находится поясняющий текст.
 */
class NamedIcon extends StatelessWidget
{
  final NamedIconData   data;
  final NamedIconConfig config;

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children: [
        Image.asset(data.asset, width: config.width, height: config.height),
        const SizedBox(width: 7.0),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
          child: Text(
            data.title,
            style: config.style ?? Theme.of(context).textTheme.headline5,
          ),
        ),
      ],
    );
  }

  const NamedIcon(this.data, this.config, {Key? key}): super(key: key);
}



// END