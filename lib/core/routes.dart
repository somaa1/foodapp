import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/core/resources/manager_strings.dart';

import '../features/auth/presentation/view/Login_Page.dart';
import '../features/auth/presentation/view/Regiester_Page.dart';
import '../features/home/presentation/view/home_view.dart';
import '../features/out_boarding/presentation/view/out_boarding_screen.dart';
import '../features/splash/presentation/view/splash_screen.dart';

class Routes {
  static const String splashScreen = '/splash_screen';
  static const String aboutScreen = '/about_screen';
  static const String outBoardingScreen = '/out_boarding_screen';

  static const String authenticationView = '/authenticationView';
  static const String loginView = '/loginView';
  static const String registerView = '/registerView';
  static const String homeView = '/HomeView';
}
class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.outBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OutBoardingScreen());

      case Routes.loginView:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case Routes.registerView:
        return MaterialPageRoute(builder: (_) => const RegiesterPage());
      case Routes.homeView:
        return MaterialPageRoute(builder: (_) => const HomeView());
      default:
        return unDefineRoute();
    }
  }

  static Route<dynamic> unDefineRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Text(ManagerStrings.notFoundRoute),
        ),
      ),
    );
  }
}
