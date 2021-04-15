import 'package:flutter/material.dart';
import 'package:flutter_demo/logic/log/debug_logger.dart';
import 'package:flutter_demo/presentation/screens/index/components/body.dart';

class IndexScreen extends StatefulWidget {
  final String title;

  IndexScreen({Key key, this.title}) : super(key: key);

  @override
  _IndexScreenState createState() => _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    DebugLogger().info("counter:$_counter");
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(
        value: _counter,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: Icon(Icons.add),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      centerTitle: true,
      title: Container(
        child: Text("首页"),
      ),
    );
  }
}
