import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../configs/colors.dart';
import '../../configs/text_styles.dart';

import '../education/presentation/screens/education_screen.dart';
import '../home/presentation/home_screen.dart';
import '../map/presentation/screens/map_screen.dart';
import '../news/presentation/screens/news_screen.dart';

class BottomNavigationState extends State with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  final _children = <Widget>[
    const HomeScreen(),
    const MapScreen(),
    const EducationScreen(),
    const SettingsScreen(),
  ];
  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: _children.length,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        children: _children,
        controller: _tabController,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.grey,
        selectedLabelStyle: TextStyles.selectedLabelStyle,
        unselectedLabelStyle: TextStyles.unselectedLabelStyle,
        onTap: onTabTapped,
        currentIndex: _tabController.index,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.map),
            label: 'Map',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person),
            label: 'Education',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _tabController.index = index;
    });
  }
}
