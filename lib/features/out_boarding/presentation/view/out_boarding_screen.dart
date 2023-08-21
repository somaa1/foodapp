
import 'package:flutter/material.dart';
import '../../../../core/constants.dart';
import '../../../../core/resources/manager_assets.dart';
import '../../../../core/resources/manager_colors.dart';
import '../../../../core/resources/manager_font_sizes.dart';
import '../../../../core/resources/manager_font_weight.dart';
import '../../../../core/resources/manager_height.dart';
import '../../../../core/resources/manager_strings.dart';
import '../../../../core/resources/manager_width.dart';
import '../../../../core/routes.dart';
import '../../../../core/widgets/base_button.dart';
import '../widget/out_boarding_content.dart';
import '../widget/progress_indicator.dart';

class OutBoardingScreen extends StatefulWidget {
  const OutBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OutBoardingScreen> createState() => _OutBoardingScreenState();
}

class _OutBoardingScreenState extends State<OutBoardingScreen> {
  late PageController _pageController;
  int _currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Visibility(
          visible: isNotFirstPage(),
          child: IconButton(
            onPressed: () {
              _pageController.previousPage(
                duration:  Duration(
                  milliseconds: Constants.pageViewSliderDuration,
                ),
                curve: Curves.fastLinearToSlowEaseIn,
              );
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
            ),
          ),
        ),
        backgroundColor: ManagerColors.transparent,
        elevation: Constants.appBarElevation,
        actions: [
          // Container(
          //   width: ManagerWidth.w100,
          //   height: ManagerHeight.h40,
          //   margin: const EdgeInsetsDirectional.only(
          //     end: ManagerWidth.w12,
          //   ),
          //   child: Visibility(
          //     visible: isNotLastPage(),
          //     replacement: BaseButton(
          //       width: ManagerWidth.w10,
          //       height: ManagerHeight.h10,
          //       title: ManagerStrings.start,
          //       textStyle: TextStyle(
          //         color: ManagerColors.black,
          //         fontSize: ManagerFontSizes.s16,
          //       ),
          //       isVisibleIcon: false,
          //       bgColor: ManagerColors.transparent,
          //       elevation: Constants.elevationZero,
          //       onPressed: () {},
          //     ),
          //     child: BaseButton(
          //       width: ManagerWidth.w10,
          //       height: ManagerHeight.h10,
          //       title: ManagerStrings.next,
          //       textStyle: TextStyle(
          //         color: ManagerColors.black,
          //         fontSize: ManagerFontSizes.s16,
          //       ),
          //       isVisibleIcon: false,
          //       bgColor: ManagerColors.transparent,
          //       elevation: Constants.elevationZero,
          //       onPressed: () {
          //         _pageController.nextPage(
          //           duration: const Duration(
          //             milliseconds: Constants.pageViewSliderDuration,
          //           ),
          //           curve: Curves.easeIn,
          //         );
          //       },
          //     ),
          //   ),
          // ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: ManagerWidth.w30,
          vertical: ManagerHeight.h34,
        ),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _pageController,
                onPageChanged: (int value) {
                  setState(() {
                    _currentPageIndex = value;
                  });
                },
                children: const [
                  OutBoardingContent(
                    image: ManagerAssets.outBoarding1,
                    title: ManagerStrings.outBoardingTitle1,
                    subTitle: ManagerStrings.outBoardingSubTitle1,
                  ),
                  OutBoardingContent(
                    image: ManagerAssets.outBoarding2,
                    title: ManagerStrings.outBoardingTitle2,
                    subTitle: ManagerStrings.outBoardingSubTitle2,
                  ),
                  OutBoardingContent(
                    image: ManagerAssets.outBoarding33,
                    title: ManagerStrings.outBoardingTitle3,
                    subTitle: ManagerStrings.outBoardingSubTitle3,
                  ),

                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Visibility(
                  visible: isNotLastPage(),

                  child: GestureDetector(
                    onTap: (){
                      _pageController.animateToPage(
                        Constants.outBoardingLastPage,
                        duration: const Duration(milliseconds: 100),
                        curve: Curves.fastLinearToSlowEaseIn,
                      );
                    },
                    child: Text(ManagerStrings.skip,
                        style: TextStyle(
                          color: Color(0xFFC4C4C4),
                          fontSize: 15,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),),
                  ),

                ),
                Row(children: [      progressIndicator(
                  color: isFirstPage()
                      ? ManagerColors.green
                      : ManagerColors.progressIndicatorColor,
                  width: isFirstPage() ?  ManagerWidth.w8 : ManagerWidth.w8,
                ),
                  progressIndicator(
                    color: isSecondPage()
                        ? ManagerColors.green
                        : ManagerColors.progressIndicatorColor,
                    width: isSecondPage() ? ManagerWidth.w8 : ManagerWidth.w8,
                  ),
                  progressIndicator(
                    color: isLastPage()
                        ? ManagerColors.green
                        : ManagerColors.progressIndicatorColor,
                    width: isLastPage() ? ManagerWidth.w8 : ManagerWidth.w8,
                  ),


                ],),
                Visibility(
                  visible: isNotLastPage(),
                  child: GestureDetector(
                    onTap: (){
                      _pageController.nextPage(
                          duration: const Duration(
                          milliseconds: Constants.pageViewSliderDuration), curve: Curves.easeIn);},
                    
                    child: Text(ManagerStrings.next,style: TextStyle(
                      color: Color(0xFF6CC51D),
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),),
                  ),
                  replacement:   GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, Routes.loginView);
                    },
                    child: Text(ManagerStrings.start,style: TextStyle(
                      color: Color(0xFF6CC51D),
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),),
                  ),
                ),



              ],
            ),
            const SizedBox(height: ManagerHeight.h40),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: ManagerWidth.w40,
              ),
            ),
          ],
        ),
      ),
    );
  }

  bool isNotFirstPage() {
    return _currentPageIndex != 0;
  }

  bool isFirstPage() {
    return _currentPageIndex == 0;
  }

  bool isSecondPage() {
    return _currentPageIndex == 1;
  }



  bool isLastPage() {
    return _currentPageIndex == Constants.outBoardingLastPage;
  }

  bool isNotLastPage() {
    return _currentPageIndex != Constants.outBoardingLastPage;
  }
}
