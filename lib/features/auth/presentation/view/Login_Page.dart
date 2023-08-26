import 'package:flutter/material.dart';
import 'package:foodapp/core/resources/manager_assets.dart';
import 'package:foodapp/core/resources/manager_colors.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../core/routes.dart';
import '../widget/auth_page.dart';
import 'Regiester_Page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
          color: ManagerColors.white,
        ),
        elevation: 30,
        title: Text(
          'Welcome ',
          style: TextStyle(
            fontSize: 23,
            fontFamily: 'Poppins',
            color: Colors.white,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.54,
          ),
        ),
        centerTitle: true,
        backgroundColor: ManagerColors.transparent,
      ),
      backgroundColor: ManagerColors.grayLight,
      body: Auth(
        title: 'Login ',
        titlebottom: 'Don’t have an account ?',
        subTitlebottom: ' Sign up',
        onPressedButton: () {
          Get.back();
          Get.offAllNamed(Routes.homeView);

        },
        onPressedUnderBottom: () {
          Get.off(RegiesterPage());
        },
        titleup: 'Welcome back !',
        subTitleup: 'Sign in to your account',
        icon1: Icon(Icons.email_outlined),
        icon2: Icon(Icons.phone_outlined),
        textfiled1: 'Phone number',
        textfiled2: 'Password',
      ),
    );
  }
}
/*        child: Container(
          constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
              maxWidth: MediaQuery.of(context).size.width),
          child: Column(
            children: [
              Padding(

                padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                child: Expanded(
                    flex: 3,
                    child: Column(
                      children: [
                        Image.asset(
                          ManagerAssets.auth1,
                          width: double.infinity,
                          height: 400,
                          fit: BoxFit.cover,
                        )
                      ],
                    )),
              ),
              Expanded(
                  flex: 5,
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: ManagerColors.green,
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextField()
                      ],
                    ),
                  ))
            ],
          ),
        ),
*/
