import 'package:flutter/cupertino.dart';
import 'package:foodapp/core/storage/local/database/shared_preferences/app_settings_shared_preferences.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../features/splash/controller/splash_controller.dart';

initModule() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferencesSetting().initPreferences();
}
initSplash() {
  Get.put<SplashController>(SplashController());
}

disposeSplash() {
  Get.delete<SplashController>();
}