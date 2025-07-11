import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract interface class AppConfig {
  String get apiToken;
}

class EnvAppConfig implements AppConfig {
  @override
  String get apiToken =>
      dotenv.env['API_TOKEN'] ?? (throw Exception('API_TOKEN is not set'));
}

class AppConfigHolder {
  static late final AppConfig instance;

  static Future<void> initialize() async {
    await dotenv.load(fileName: '.env');
    instance = EnvAppConfig();
  }
}
