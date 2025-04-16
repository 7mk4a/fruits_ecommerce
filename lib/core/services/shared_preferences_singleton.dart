import 'package:shared_preferences/shared_preferences.dart';

class Prefs {
  static SharedPreferences? _instance;

  static Future<void> init() async {
    _instance = await SharedPreferences.getInstance();
  }

  static Future<void> setBool(String key, bool value) async {
    await _ensureInit();
    await _instance!.setBool(key, value);
  }

  static Future<bool> getBool(String key) async {
    await _ensureInit();
    return _instance!.getBool(key) ?? false;
  }

  static Future<void> setString(String key, String value) async {
    await _ensureInit();
    await _instance!.setString(key, value);
  }

  static Future<String> getString(String key) async {
    await _ensureInit();
    return _instance!.getString(key) ?? '';
  }

  static Future<void> _ensureInit() async {
    if (_instance == null) {
      await init();
    }
  }
}
