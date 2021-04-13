import 'package:flutter/material.dart';
import 'package:flutter_demo/presentation/screens/index/index_screen.dart';
import 'package:flutter_demo/presentation/screens/welcome/welcome_screen.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => IndexScreen(
            title: "首页",
          ),
        );
      case '/welcome':
        return MaterialPageRoute(builder: (_) => WelcomeScreen());
      default:
        return null;
    }
  }
}
