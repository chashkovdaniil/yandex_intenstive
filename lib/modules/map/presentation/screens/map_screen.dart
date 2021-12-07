import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yandex_intensive/configs/constants.dart';
import 'package:yandex_intensive/modules/map/presentation/widgets/app_bar.dart';

class MapScreen extends StatefulWidget {
  static const route = '/map';
  const MapScreen({Key? key}) : super(key: key);
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            MapScreenAppBar(
              showBackButton: false,
              title: S.mapTitle,
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}