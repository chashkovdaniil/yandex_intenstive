import 'package:flutter/material.dart';

class FeedsPage extends StatefulWidget {
  static const route = '/feeds';

  FeedsPage({
    Key? key,
  }) : super(key: key);
  @override
  _FeedsPageState createState() => _FeedsPageState();
}

class _FeedsPageState extends State<FeedsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(),
    );
  }
}
