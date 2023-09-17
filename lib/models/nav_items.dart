import 'package:flutter/material.dart';
import 'package:recipe_app/screens/home_screen.dart';
import 'package:recipe_app/screens/profile_screen.dart';

class NavItem {
  final int id;
  final String icon;
  final Widget? destination;

  NavItem(this.destination, this.id, this.icon);

  bool destinationChecker() {
    if (destination != null) {
      return true;
    }
    return false;
  }
}

class NavItems extends ChangeNotifier {
  int selectedIndex = 0;

  void changeNavIndex({required int index}) {
    selectedIndex = index;
    notifyListeners();
  }

  List<NavItem> items = [
    NavItem(const HomeScreen(), 1, 'assets/icons/home.svg'),
    // NavItem(HomeScreen(), 2, 'assets/icons/list.svg'),
    // NavItem(HomeScreen(), 3, 'assets/icons/camera.svg'),
    // NavItem(HomeScreen(), 4, 'assets/icons/chef_nav.svg'),
    NavItem(const ProfileScreen(), 2, 'assets/icons/user.svg')
  ];
}
