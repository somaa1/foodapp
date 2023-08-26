import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/resources/manager_assets.dart';
import '../../../../core/resources/manager_colors.dart';
import '../../../../core/resources/manager_height.dart';
import '../../../../core/resources/manager_raduis.dart';
import '../../../../core/resources/manager_width.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      body: Container(
        color: ManagerColors.white,
        margin: EdgeInsetsDirectional.only(start: 20, top: 40),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 380,
                height: 50,
                decoration: BoxDecoration(
                    color: Color(0xFFF4F5F9),
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.search),
                      color: Color(0Xff868889),
                    ),
                    Expanded(
                        child: Text(
                      'Search keywords..',
                      style: TextStyle(
                        color: Color(0xFF868889),
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    )),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.filter_list),
                      color: Color(0Xff868889),
                    )
                  ],
                ),
              ),
              Container(
                width: 460,
                height: 300,
                margin: EdgeInsetsDirectional.only(
                    end: 20, top: 20, start: 5, bottom: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                        image: AssetImage("assets/images/home/home_image.png"),
                        fit: BoxFit.cover)),
                child: const Center(
                  child: Text(
                    '20% off on your\nfirst purchase',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Text(
                    'Categories',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Expanded(child: Text("")),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_forward_ios),
                    color: Color(0Xff868889),
                  )
                ],
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: ManagerHeight.h100,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 100,
                            height: 100,
                            margin: EdgeInsetsDirectional.only(
                                end: ManagerWidth.w8),
                            decoration: BoxDecoration(
                              color: ManagerColors.white,
                              borderRadius: BorderRadius.circular(
                                ManagerRadius.r6,
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 80,
                                        height: 80,
                                        child: CircleAvatar(
                                          child: Image.asset(
                                            'assets/images/home/Group.png',
                                            height: 60,
                                            width: 50,
                                          ),
                                          backgroundColor: Color(0xFFFFE9E5),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 1,
                                      ),
                                      Text(
                                        'Vegetables',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF868889),
                                          fontSize: 13,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'Featured products',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Expanded(child: Text("")),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_forward_ios),
                          color: Color(0Xff868889),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
