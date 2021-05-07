import 'package:flutter/material.dart';
import 'package:flutter_demo/presentation/router/app_router.dart';
import 'package:flutter_demo/presentation/screens/index/index_screen.dart';
import 'package:flutter_demo/presentation/screens/welcome/welcome_screen.dart';

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
    NavItem(
      id: 1,
      icon: 59322,
      destination: IndexScreen(),
    ),
    NavItem(
      id: 2,
      icon: 58870,
      destination: WelcomeScreen(),
    )
  ];
}
