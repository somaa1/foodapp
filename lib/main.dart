
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/routes.dart';
import 'features/home/presentation/view/Login_Page.dart';
import 'features/out_boarding/presentation/view/out_boarding_screen.dart';
import 'features/splash/presentation/view/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      color: Colors.transparent,
      theme: ThemeData( useMaterial3:true,),
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.splashScreen,
      routes: {
        Routes.splashScreen: (context) => const SplashScreen(),
        Routes.outBoardingScreen: (context) => const OutBoardingScreen(),
        // Routes.authenticationView: (context) => const AuthenticationView(),
        Routes.loginView: (context) =>  LoginPage(),
        // Routes.registerView: (context) => const RegisterView(),
       //  Routes.homeView: (context) => const HomeView(),
      },
    );
  }
}
