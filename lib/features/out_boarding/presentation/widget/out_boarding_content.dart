import 'package:flutter/material.dart';
import 'package:foodapp/core/resources/manager_width.dart';
import '../../../../core/resources/manager_assets.dart';
import '../../../../core/resources/manager_colors.dart';
import '../../../../core/resources/manager_font_sizes.dart';
import '../../../../core/resources/manager_font_weight.dart';
import '../../../../core/resources/manager_height.dart';
import '../../../../core/resources/manager_strings.dart';

class OutBoardingContent extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;

  const OutBoardingContent({
    super.key,
    this.image = ManagerAssets.outBoarding1,
    this.title = ManagerStrings.outBoardingTitle1,
    this.subTitle = ManagerStrings.outBoardingSubTitle1,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ManagerHeight.h500,
      child: Column(
        children: [
          Image.asset(
            image,
            height: ManagerHeight.h380,
            width: ManagerWidth.w380,
          ),
          const SizedBox(
            height: ManagerHeight.h100,
          ),
          Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700,
              letterSpacing: 0.75,
            ),
          ),
          const SizedBox(
            height: ManagerHeight.h12,
          ),
          SizedBox(
            height: ManagerHeight.h50,
            child: Text(
              subTitle,
              style: TextStyle(
                color: Color(0xFF868889),
                fontSize: 15,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: ManagerHeight.h12,
          ),
        ],
      ),
    );
  }
}
