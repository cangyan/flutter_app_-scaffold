import 'package:flutter/material.dart';
import 'package:flutter_demo/logic/log/debug_logger.dart';
import 'package:flutter_demo/widgets/bottom_nav_bar.dart';

class WelcomeScreen extends StatefulWidget {
  WelcomeScreen({Key key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final logger = DebugLogger();

  @override
  Widget build(BuildContext context) {
    logger.info("welcome");
    return Scaffold(
      appBar: buildAppBar(),
      body: Container(
        child: Column(
          children: [Text("welcome")],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      centerTitle: true,
      title: Container(
        child: Text("welcome"),
      ),
    );
  }
}
