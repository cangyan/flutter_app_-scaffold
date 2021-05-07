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
        backgroundColor: Colors.greenAccent,
        behavior: SnackBarBehavior.floating,
      ));

  void failed(context, message) =>
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(message),
        backgroundColor: Colors.redAccent,
        behavior: SnackBarBehavior.floating,
      ));

  void notify(context, message) => ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
          backgroundColor: Colors.blueAccent,
          behavior: SnackBarBehavior.floating,
        ),
      );
}
