import 'dart:convert';
import 'package:flutter/services.dart';

const APP_ENV_DEV = "dev";
const APP_ENV_PRD = "prd";

class AppConfig {
  final String env;
  final String apiUrl;

  AppConfig({this.env, this.apiUrl});

  static Future<AppConfig> forEnvironment(String env) async {
    // set default to dev if nothing was passed

    env = env ?? APP_ENV_PRD;

    // load the json file
    final contents = await rootBundle.loadString(
      'assets/config/$env.json',
    );

    // decode our json
    final json = jsonDecode(contents);

    // convert our JSON into an instance of our AppConfig class
    return AppConfig(env: json["env"], apiUrl: json['api-gateway']);
  }
}
