import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../configs/colors.dart';
import '../../configs/text_styles.dart';
import '../education/presentation/screens/education_screen.dart';
import '../home/presentation/home_screen.dart';
import '../map/presentation/screens/map_screen.dart';
import '../settings/presentation/screens/settings_screen.dart';

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
            label: 'bottomNavigationItemHome'.tr(),
          ),
          BottomNavigationBarItem(
            icon: const Icon(CupertinoIcons.map),
            label: 'bottomNavigationItemMap'.tr(),
          ),
          BottomNavigationBarItem(
            icon: const Icon(CupertinoIcons.person),
            label: 'bottomNavigationItemEducation'.tr(),
          ),
          BottomNavigationBarItem(
            icon: const Icon(CupertinoIcons.settings),
            label: 'bottomNavigationItemSettings'.tr(),
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
