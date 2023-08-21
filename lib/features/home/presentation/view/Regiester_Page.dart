import 'package:flutter/material.dart';
import 'package:foodapp/core/resources/manager_assets.dart';
import 'package:foodapp/core/resources/manager_colors.dart';
import 'package:foodapp/features/home/presentation/view/Login_Page.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../widget/auth_page.dart';

class RegiesterPage extends StatelessWidget {
  const RegiesterPage({super.key});

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
        title: 'Sign up',
        titlebottom: 'Already have an account ?',
        subTitlebottom: ' Login',
        onPressed: () {},
        onPressedUnderBottom: () {
          Get.off(LoginPage());
        },
        titleup: 'Create account',
        subTitleup: 'Quickly create account',
        icon1: Icon(Icons.email_outlined), textfiled1: 'Email Address', textfiled2: 'Phone number', icon2: Icon(Icons.phone_in_talk_sharp,),image: ManagerAssets.auth2,
      ),
    );
  }
}
