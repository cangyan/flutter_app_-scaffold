import 'package:flutter/material.dart';

class IndexScreen extends StatefulWidget {
  final String title;

  IndexScreen({Key key, this.title}) : super(key: key);

  @override
  _IndexScreenState createState() => _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          children: [Text('${widget.title}')],
        ),
      ),
    );
  }
}
