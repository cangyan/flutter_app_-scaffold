import 'package:flutter/material.dart';

class SnackToast {
  static SnackToast _instance;

  SnackToast._internal() {
    _instance = this;
  }

  factory SnackToast() => _instance ?? SnackToast._internal();

  void success(context, message) =>
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(message),
        backgroundColor: Colors.green[300],
      ));

  void failed(context, message) =>
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(message),
        backgroundColor: Colors.redAccent,
      ));

  void notify(context, message) => ScaffoldMessenger.of(context)
      .showSnackBar(SnackBar(content: Text(message)));
}
