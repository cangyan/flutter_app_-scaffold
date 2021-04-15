import 'package:flutter/material.dart';
import 'package:flutter_demo/logic/log/debug_logger.dart';

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
    return Center(
      child: Container(
        child: Column(
          children: [Text("welcome")],
        ),
      ),
    );
  }
}
