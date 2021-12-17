import 'package:flutter/material.dart';

class AppBottomSheet extends StatelessWidget {
  final Widget Function(BuildContext) builder;
  const AppBottomSheet({
    Key? key,
    required this.builder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      builder: builder,
      onClosing: () {},
    );
  }
}
