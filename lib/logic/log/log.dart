import 'dart:developer' as developer;
import 'package:logging/logging.dart';

class Log {
  static info(String message) {
    developer.log(message, level: Level.INFO.value);
  }

  static warning(String message) {
    developer.log(message, level: Level.WARNING.value);
  }

  static error(String message) {
    developer.log(message, level: Level.SHOUT.value);
  }
}
