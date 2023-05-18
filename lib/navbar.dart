import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lms/calender.dart';
import 'package:lms/dashboard/dashboard.dart';
import 'package:lms/dashboard/lecture_materials.dart';
import 'package:lms/dashboard/time_table.dart';
import 'package:lms/main.dart';
import 'package:lms/settings/settings.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class BottomNavbar extends StatelessWidget {
  BottomNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PersistentTabController _controller;
    _controller = PersistentTabController(initialIndex: 0);

    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.blue.shade900,
      // Default is Colors.white.
      handleAndroidBackButtonPress: true,
      // Default is true.
      resizeToAvoidBottomInset: true,
      // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true,
      // Default is true.
      hideNavigationBarWhenKeyboardShows: true,
      // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: const NavBarDecoration(
        borderRadius: BorderRadius.zero,
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style9, // Choose the nav bar style with this property.
    );
  }
}

List<Widget> _buildScreens() {
  return [DashboardScreen(),Calender(),Settings()];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      icon: const Icon(CupertinoIcons.home),
      title: ("Home"),
      activeColorPrimary: CupertinoColors.white,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.calendar_today),
      title: ("Calender"),
      activeColorPrimary: CupertinoColors.white,
      inactiveColorPrimary: CupertinoColors.systemGrey.elevatedColor,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.settings),
      title: ("Settings"),
      activeColorPrimary: CupertinoColors.white,
      inactiveColorPrimary: CupertinoColors.systemGrey.elevatedColor,
    ),
  ];
}
