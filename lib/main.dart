
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/routes.dart';
import 'features/auth/presentation/view/Login_Page.dart';
import 'features/auth/presentation/view/Regiester_Page.dart';
import 'features/home/presentation/view/home_view.dart';
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
      onGenerateRoute: RouteGenerator.getRoute,

    );
  }
}
