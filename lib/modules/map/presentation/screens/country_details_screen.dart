import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yandex_intensive/modules/map/presentation/widgets/app_bar.dart';

class CountryDetailsScreen extends StatefulWidget {
  static const route = '/';
  const CountryDetailsScreen({Key? key}) : super(key: key);
  @override
  _CountryDetailsScreenState createState() => _CountryDetailsScreenState();
}

class _CountryDetailsScreenState extends State<CountryDetailsScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var country = 'China';
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            MapScreenAppBar(
              showBackButton: true,
              title: "$country - statistics",
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}