
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../core/constants.dart';
import '../../../../core/resources/manager_assets.dart';
import '../../../../core/resources/manager_font_sizes.dart';
import '../../../../core/resources/manager_height.dart';
import '../../../../core/resources/manager_strings.dart';
import '../../../../core/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(
        seconds: Constants.splashTime,
      ),
      () => Get.offAllNamed(Routes.outBoardingScreen),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              ManagerAssets.splash1,
              filterQuality: FilterQuality.high,
              fit: BoxFit.cover,
            ),
            Align(
              child: Image.asset(
                ManagerAssets.splash2,
                filterQuality: FilterQuality.high,
              ),
            ),
            Align(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    ManagerAssets.logo,
                  ),
                  const SizedBox(height: ManagerHeight.h12),
                  const Text(
                    ManagerStrings.appName,
                    style: TextStyle(
                      fontSize: ManagerFontSizes.s20,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
