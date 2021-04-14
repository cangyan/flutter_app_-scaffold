import 'package:flutter/material.dart';
import 'package:flutter_demo/constants/theme.dart';
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
      theme: themeData(context),
      darkTheme: darkThemeData(context),
      themeMode: ThemeMode.system,
      onGenerateRoute: appRouter.onGenerateRoute,
    );
  }
}
