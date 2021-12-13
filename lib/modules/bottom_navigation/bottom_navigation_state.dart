import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yandex_intensive/configs/colors.dart';
import 'package:yandex_intensive/configs/text_styles.dart';

import '../discovery/presentation/screens/discovery_screen.dart';
import '../education/presentation/screens/education_screen.dart';
import '../home/presentation/home_screen.dart';
import '../map/presentation/screens/map_screen.dart';
import '../news/presentation/screens/news_screen.dart';

class BottomNavigationState extends State {
  int _currentIndex = 0;
  final List _children = [
    const HomeScreen(),
    const MapScreen(),
    const EducationScreen(),
    const DiscoveryScreen(),
    const NewsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.grey,
        selectedLabelStyle: TextStyles.selectedLabelStyle,
        unselectedLabelStyle: TextStyles.unselectedLabelStyle,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
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
            icon: Icon(CupertinoIcons.location),
            label: 'Discovery',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.book),
            label: 'News',
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
}
