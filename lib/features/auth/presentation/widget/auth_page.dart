import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/core/widgets/primry_button.dart';
import 'package:foodapp/core/widgets/prumary_text.dart';

import '../../../../core/resources/manager_assets.dart';
import '../../../../core/resources/manager_colors.dart';

class Auth extends StatelessWidget {
  Auth(
      {super.key,
      required this.icon1,
        required this.icon2,
this.image= ManagerAssets.auth1,
        required this.textfiled1,
      required this.textfiled2,
      required this.titleup,
      required this.subTitleup,
      required this.title,
      required this.titlebottom,
      required this.subTitlebottom,
      required this.onPressedButton,
      required this.onPressedUnderBottom});

  final String titleup;
  final String subTitleup;
  final String title;
  final String image;

  final Icon icon1;
  final Icon icon2;

  final String textfiled1;
  final String textfiled2;

  void Function() onPressedButton;
  void Function() onPressedUnderBottom;

  final String titlebottom;
  final String subTitlebottom;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 3,
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              clipBehavior: Clip.none,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(12),
                    topLeft: Radius.circular(12)),
              ),
              child: Padding(
                padding: EdgeInsets.all(14),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 135, bottom: 30),
                      child: Column(
                        children: [
                          Text(
                            titleup,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.75,
                            ),
                          ),
                          Text(
                            subTitleup,
                            style: TextStyle(
                              color: Color(0xFF868889),
                              fontSize: 15,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.45,
                            ),
                          ),
                        ],
                      ),
                    ),
                    PrimraryText(icon: icon1, text: textfiled1),
                    SizedBox(height: 20),
                    PrimraryText(icon: icon2, text: textfiled2),
                    SizedBox(height: 20),
                    PrimraryButton(onPressed: onPressedButton, title: title),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          titlebottom!,
                          style: TextStyle(
                            color: Color(0xFF868889),
                            fontSize: 15,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w300,
                            letterSpacing: 0.45,
                          ),
                        ),
                        GestureDetector(
                          onTap: onPressedUnderBottom,
                          child: Text(subTitlebottom!,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.45,
                              )),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
