import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../configs/constants.dart';
import '../../../../configs/text_styles.dart';
import '../../../../generated/codegen_loader.g.dart';

class RestList extends StatelessWidget {
  const RestList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        children: [
          SizedBox(
            height: EasyLocalization.of(context).toString() == '' ? 8 : 8,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, bottom: 4),
            child: Row(
              children: [
                Text(
                  LocaleKeys.mapRest.tr(),
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
