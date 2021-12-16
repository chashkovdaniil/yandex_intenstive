import 'package:flutter/material.dart';

import '../../../../configs/text_styles.dart';
import '../../../general/on_tap_opacity.dart';

// class ItemLanguage extends StatelessWidget {
//   const ItemLanguage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     var langValue = 'English';
//     return OnTapOpacityContainer(
//       onTap: () =>
//         langValue == 'English' ? langValue = 'Russian' : langValue ='English',
//       child: Text(
//         langValue,
//         style: TextStyles.titleSettingsScope,
//       ),
//     );
//   }
// }

class ItemLanguage extends StatefulWidget {
  const ItemLanguage({Key? key}) : super(key: key);

  @override
  _ItemLanguageState createState() => _ItemLanguageState();
}

class _ItemLanguageState extends State<ItemLanguage> {
  var langValue = 'English';

  @override
  Widget build(BuildContext context) {
    return OnTapOpacityContainer(
      onTap: () => setState(() {
        langValue == 'English' ? langValue = 'Russian' : langValue = 'English';
      }),
      child: Text(
        langValue,
        style: TextStyles.titleSettingsScope.copyWith(
          color: Theme.of(context).colorScheme.onSurface,
        ),
      ),
    );
  }
}
