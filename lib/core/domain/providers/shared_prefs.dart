import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sharedPrefsProvider = Provider((ref) => SharedPrefs());

class SharedPrefs {
  late SharedPreferences _prefs;

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  Set<String> getKeys() => _prefs.getKeys();

  Object? get(String key) => _prefs.get(key);

  bool? getBool(String key) => _prefs.getBool(key);

  int? getInt(String key) => _prefs.getInt(key);

  double? getDouble(String key) => _prefs.getDouble(key);

  String? getString(String key) => _prefs.getString(key);

  bool containsKey(String key) => _prefs.containsKey(key);

  List<String>? getStringList(String key) => _prefs.getStringList(key);

  Future<bool> setBool(String key, bool value) async =>
      await _prefs.setBool(key, value);

  Future<bool> setInt(String key, int value) async =>
      await _prefs.setInt(key, value);

  Future<bool> setDouble(String key, double value) async =>
      await _prefs.setDouble(key, value);

  Future<bool> setString(String key, String value) async =>
      await _prefs.setString(key, value);

  Future<bool> setStringList(String key, List<String> value) async =>
      await _prefs.setStringList(key, value);

  Future<bool> remove(String key) async => await _prefs.remove(key);

  Future<bool> clear() => _prefs.clear();

  Future<void> reload() async => _prefs.reload();
}
