import 'package:logging/logging.dart';
import 'package:logging_appenders/logging_appenders.dart';

class DebugLogger {
  static DebugLogger _instance;
  static Logger _logger;
  static const appName = 'app';

  DebugLogger._internal() {
    Logger.root.level = Level.ALL;

    _logger = Logger(appName);

    _instance = this;
  }

  factory DebugLogger() => _instance ?? DebugLogger._internal();

  void log(message, [Object error, StackTrace stackTrace]) =>
      _logger.info(message, error, stackTrace);

  void info(message, [Object error, StackTrace stackTrace]) {
    final appender = PrintAppender(formatter: const ColorFormatter())
      ..attachToLogger(Logger.root);
    _logger.info(message, error, stackTrace);
    appender.dispose();
  }

  void warning(message, [Object error, StackTrace stackTrace]) {
    final appender = PrintAppender(formatter: const ColorFormatter())
      ..attachToLogger(Logger.root);
    _logger.warning(message, error, stackTrace);
    appender.dispose();
  }

  void error(message, [Object error, StackTrace stackTrace]) {
    final appender = PrintAppender(formatter: const ColorFormatter())
      ..attachToLogger(Logger.root);
    _logger.severe(message, error, stackTrace);
    appender.dispose();
  }
}
