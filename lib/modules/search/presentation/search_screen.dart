import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'widgets/search_field.dart';

class SearchScreen extends HookConsumerWidget {
  static const route = '/search';
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final textFieldController = useTextEditingController();
    final updateTextField = useValueListenable(textFieldController);
    useEffect(
      () {
        textFieldController
          ..text = updateTextField.text
          ..selection = TextSelection(
            baseOffset: updateTextField.text.length,
            extentOffset: updateTextField.text.length,
          );
      },
      [updateTextField],
    );
    var focusNode = useFocusNode();

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 70,
        title: SearchField(
          autofocus: true,
          searchFieldController: textFieldController,
          focusNode: focusNode,
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text(textFieldController.text),
          ),
        ],
      ),
    );
  }
}
