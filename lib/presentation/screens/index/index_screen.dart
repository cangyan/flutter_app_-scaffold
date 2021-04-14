import 'package:flutter/material.dart';
import 'package:flutter_demo/logic/log/log.dart';
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
    Log.error("+++++");
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(
        value: _counter,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: Icon(Icons.add),
        backgroundColor: Theme.of(context).iconTheme.color,
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
