import 'package:shared_preferences/shared_preferences.dart';

abstract interface class StorageService {
  Future<String?> getString(String key);
  Future<void> setString(String key, String value);
}

final class StorageServiceImpl implements StorageService {
  SharedPreferences? prefs;

  Future<SharedPreferences> getPreferences() async {
    final maybePrefs = this.prefs;
    if (maybePrefs != null) {
      return maybePrefs;
    }
    final prefs = await SharedPreferences.getInstance();
    this.prefs = prefs;
    return prefs;
  }

  @override
  Future<String?> getString(String key) async {
    return (await getPreferences()).getString(key);
  }

  @override
  Future<void> setString(String key, String value) async {
    (await getPreferences()).setString(key, value);
  }
}
