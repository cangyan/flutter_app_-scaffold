import 'package:flutter/material.dart';
import 'package:flutter_demo/presentation/router/app_router.dart';

void main() async {
  runApp(MyApp(
    appRouter: AppRouter(),
  ));
}

class MyApp extends StatelessWidget {
  final AppRouter appRouter;

  const MyApp({Key key, @required this.appRouter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App Scaffold',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: appRouter.onGenerateRoute,
    );
  }
}
