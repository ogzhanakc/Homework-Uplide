
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_homework_uplide/core/constants/enums/cache_keys.dart';

class CacheManager {
  SharedPreferences? _preferences;

  CacheManager._privateConstructor();

  static final CacheManager _instance = CacheManager._privateConstructor();

  factory CacheManager() {
    return _instance;
  }

  Future<void> init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  Future<void> setStringValue(CacheKeys key, String value) async {
    await _preferences!.setString(key.toString(), value);
  }

  Future<void> setStringList(CacheKeys key, List<String> value) async {
    await _preferences!.setStringList(key.toString(), value);
  }

  Future<String> getStringValue(CacheKeys key) async {
    return _preferences!.getString(key.toString()) ?? '';
  }

  Future<List<String>> getStringList(CacheKeys key) async {
    return _preferences!.getStringList(key.toString()) ?? [];
  }
}
