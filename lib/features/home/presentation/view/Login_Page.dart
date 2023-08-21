import 'package:flutter/material.dart';
import 'package:foodapp/core/resources/manager_assets.dart';
import 'package:foodapp/core/resources/manager_colors.dart';

import '../../../../core/widgets/auth_page.dart';

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
      body: Auth(title: 'Login ', titlebottom: 'Don’t have an account ?', subTitlebottom: ' Sign up',),
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
