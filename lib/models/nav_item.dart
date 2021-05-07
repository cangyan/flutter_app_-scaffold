import 'package:flutter/material.dart';

class NavItem {
  final int id;
  final int icon;
  final Widget destination;

  NavItem({this.id, this.icon, this.destination});

  bool destinationChecker() {
    if (destination != null) {
      return true;
    }

    return false;
  }
}

class NavItems extends ChangeNotifier {
  int selectIndex = 0;

  void changeNavIndex({int index}) {
    selectIndex = index;
    notifyListeners();
  }

  List<NavItem> items = [
    NavItem(id: 1, icon: 59322),
    NavItem(id: 2, icon: 58870)
  ];
}
