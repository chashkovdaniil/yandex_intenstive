import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yandex_intensive/configs/constants.dart';

import '../../configs/colors.dart';
import '../../configs/text_styles.dart';
import '../education/presentation/screens/education_screen.dart';
import '../home/presentation/home_screen.dart';
import '../map/presentation/screens/map_screen.dart';
import '../settings/presentation%20/screens/settings_screen.dart';

class BottomNavigationState extends State
    with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  // late final TabController _tabController;
  final _children = <Widget>[
    const HomeScreen(),
    const MapScreen(),
    const EducationScreen(),
    const SettingsScreen(),
  ];
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _children,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.grey,
        selectedLabelStyle: TextStyles.selectedLabelStyle,
        unselectedLabelStyle: TextStyles.unselectedLabelStyle,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(CupertinoIcons.home),
            label: StringValues.bottomNavigationItemHome,
          ),
          BottomNavigationBarItem(
            icon: const Icon(CupertinoIcons.map),
            label: StringValues.bottomNavigationItemMap,
          ),
          BottomNavigationBarItem(
            icon: const Icon(CupertinoIcons.person),
            label: StringValues.bottomNavigationItemEducation,
          ),
          BottomNavigationBarItem(
            icon: const Icon(CupertinoIcons.settings),
            label: StringValues.bottomNavigationItemSettings,
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  bool get wantKeepAlive => true;
}
