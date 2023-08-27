
import 'package:foodapp/core/constants.dart';
import 'package:foodapp/core/extension/extensions.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesSetting{
  static final _instance=SharedPreferencesSetting._internal();
  late SharedPreferences _sharedPreferences;
  SharedPreferencesSetting._internal();
  factory SharedPreferencesSetting() {
    return _instance;
  }
  Future<void> initPreferences() async{
   _sharedPreferences= await SharedPreferences.getInstance();
  }
  Future<bool> saveViewedOutBoarding()async{
    return _sharedPreferences.setBool(KeyConstants.outBoardingViewedKey,true);
  }
  bool get outBoardingViewed => _sharedPreferences.getBool(KeyConstants.outBoardingViewedKey).onNull();


  clear(){
    _sharedPreferences.clear();
  }
  Future<void> setLoggedIn() async {
    await _sharedPreferences.setBool(KeyConstants.loggedIn, true);
  }

  bool get loggedIn =>
      _sharedPreferences.getBool(KeyConstants.loggedIn).onNull();



  Future<void> setDefaultLocale(String lang) async {
    await _sharedPreferences.setString(KeyConstants.localeKey, lang);
  }

  String get defaultLocale =>
      _sharedPreferences.getString(KeyConstants.localeKey).parseLocale();







}

