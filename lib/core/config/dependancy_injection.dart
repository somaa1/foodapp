import 'package:flutter/cupertino.dart';
import 'package:foodapp/core/storage/local/database/shared_preferences/app_settings_shared_preferences.dart';

initModule() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferencesSetting().initPreferences();
}