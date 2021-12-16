import 'package:flutter/cupertino.dart';

import '../../../../configs/colors.dart';

class ItemNotifications extends StatelessWidget {
  const ItemNotifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoSwitch(
      activeColor: AppColors.primary,
      value: false,
      onChanged: (value) {},
    );
  }
}
