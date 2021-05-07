import 'package:flutter/material.dart';
import 'package:flutter_demo/constants/app_config.dart';
import 'package:flutter_demo/constants/theme.dart';
import 'package:flutter_demo/models/nav_item.dart';
import 'package:flutter_demo/presentation/router/app_router.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp(
    appRouter: AppRouter(),
    appConfig: await AppConfig.forEnvironment(
        const String.fromEnvironment("APP_ENV", defaultValue: APP_ENV_PRD)),
  ));
}

class MyApp extends StatelessWidget {
  final AppRouter appRouter;
  final AppConfig appConfig;

  const MyApp({Key key, @required this.appRouter, @required this.appConfig})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NavItems(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter App Scaffold',
        theme: themeData(context),
        darkTheme: darkThemeData(context),
        themeMode: ThemeMode.system,
        onGenerateRoute: appRouter.onGenerateRoute,
      ),
    );
  }
}
