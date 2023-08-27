
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesSetting{
  static final _instance=SharedPreferencesSetting._internal();
  late SharedPreferences _sharedPreferences;
  SharedPreferencesSetting._internal();
  factory SharedPreferencesSetting() {
    return _instance;
  }

}