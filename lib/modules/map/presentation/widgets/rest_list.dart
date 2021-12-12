import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../configs/text_styles.dart';

import '../../../../configs/constants.dart';

class RestList extends StatelessWidget {
  const RestList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        children: [
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, bottom: 4),
            child: Row(
              children: [
                Text(
                  StringValues.mapRest,
                  textAlign: TextAlign.start,
                  style: TextStyles.infoCountry,
                ),
              ],
            ),
          ),
          ...MockData.restCountryList,
        ],
      );
}
