import 'package:flutter/material.dart';
import '../../../../configs/colors.dart';

class SearchField extends StatelessWidget {
  final bool enabled;
  final bool autofocus;
  const SearchField({
    Key? key,
    this.enabled = true,
    this.autofocus = false,
    TextEditingController? searchFieldController,
    FocusNode? focusNode,
  })  : _searchFieldController = searchFieldController,
        _focusNode = focusNode,
        super(key: key);

  final TextEditingController? _searchFieldController;
  final FocusNode? _focusNode;

  @override
  Widget build(BuildContext context) {
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
      textInputAction: TextInputAction.search,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.search),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: const BorderSide(
            color: AppColors.grey,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: const BorderSide(
            color: AppColors.grey,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: const BorderSide(
            color: AppColors.grey,
          ),
        ),
      ),
    );
  }
}
