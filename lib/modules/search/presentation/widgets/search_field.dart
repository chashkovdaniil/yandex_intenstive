import 'package:flutter/material.dart';

import '../../../../configs/colors.dart';

class SearchField extends StatelessWidget {
  final bool enabled;
  final bool autofocus;
  final Function(String)? onSubmitted;
  final TextEditingController? _searchFieldController;
  final FocusNode? _focusNode;

  const SearchField({
    Key? key,
    this.enabled = true,
    this.autofocus = false,
    TextEditingController? searchFieldController,
    FocusNode? focusNode,
    this.onSubmitted,
  })  : _searchFieldController = searchFieldController,
        _focusNode = focusNode,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    var searchFieldBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(25),
      borderSide: BorderSide.none,
    );
    return TextField(
      controller: _searchFieldController,
      focusNode: _focusNode,
      enabled: enabled,
      autofocus: autofocus,
      toolbarOptions: const ToolbarOptions(
        copy: true,
        paste: true,
        cut: true,
        selectAll: true,
      ),
      onSubmitted: onSubmitted,
      textInputAction: TextInputAction.search,
      decoration: InputDecoration(
        fillColor: AppColors.grey.withOpacity(0.5),
        filled: true,
        prefixIcon: const Icon(Icons.search),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20),
        disabledBorder: searchFieldBorder,
        enabledBorder: searchFieldBorder,
        border: searchFieldBorder,
        focusedBorder: searchFieldBorder,
      ),
    );
  }
}
