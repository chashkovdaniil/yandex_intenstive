import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../configs/navigator.dart';
import '../../../configs/providers.dart';
import '../../map/presentation/helpers/country_details_screen_args.dart';
import 'search_screen_state.dart';

import 'widgets/search_field.dart';

final _searchScreenProvider =
    StateNotifierProvider<SearchScreenStateManager, SearchScreenState>(
  (ref) => ref.watch(searchScreenStateManagerProvider),
);

class SearchScreen extends HookConsumerWidget {
  static const route = '/search';
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final stateScreen = ref.watch(_searchScreenProvider);
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
        WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
          ref.read(throttling)
            ..duration = const Duration(milliseconds: 500)
            ..throttle(() {
              ref
                  .read(
                    countriesByNameUsecaseProvider(textFieldController.text),
                  )
                  .call();
            });
        });
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
          onSubmitted: (val) {
            ref.read(throttling)
              ..duration = const Duration(milliseconds: 500)
              ..throttle(() {
                ref.read(countriesByNameUsecaseProvider(val)).call();
              });
          },
        ),
      ),
      body: stateScreen.status.when(
        success: () => ListView(
          children: stateScreen.countries.map((e) {
            return ListTile(
              title: Text(e.name),
              onTap: () {
                ref.read(appNavigationManagerProvider).openCountryDetails(
                      CountryDetailsScreenArgs(country: e),
                    );
              },
            );
          }).toList(),
        ),
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
        failed: () => const Center(
          child: Icon(Icons.error),
        ),
      ),
    );
  }
}
