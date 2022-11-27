import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/models/introduction/introduction_model.dart';
import 'package:rento/themes/themes.dart';
import 'package:rento/utility_funtions.dart/size.dart';
import 'package:rento/utility_funtions.dart/ts.dart';
import 'package:rento/view/bottom_navigation/select_lang/select_language.dart';

import '../../../components/buttons.dart';
import '../../../components/images.dart';

class IntroductionScreenView extends StatefulWidget {
  final index;
  const IntroductionScreenView({Key? key, this.index}) : super(key: key);

  @override
  State<IntroductionScreenView> createState() => _IntroductionScreenViewState();
}

class _IntroductionScreenViewState extends State<IntroductionScreenView> {
  // page position
  int _currentPage = 0;
  late PageController _pageController = PageController(initialPage: 0);
  late Timer _timer;
  Duration pageTurnDuration = const Duration(milliseconds: 500);
  Curve pageTurnCurve = Curves.ease;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    // automatic change page after 2 seconds
    _timer = Timer.periodic(const Duration(seconds: 2), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        timer.cancel();
      }

      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 350),
        curve: Curves.easeIn,
      );
    });
  }

//toogle to change page action
  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  void _goForward() {
    _currentPage++;
    _pageController.nextPage(duration: pageTurnDuration, curve: pageTurnCurve);
  }

  void _goBack() {
    _pageController.previousPage(
        duration: pageTurnDuration, curve: pageTurnCurve);
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<IntroductionModel> list = [
      IntroductionModel(
        imagePath: Images.splash1,
        title: "Search",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
      ),
      IntroductionModel(
        imagePath: Images.splash2,
        title: "Book",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
      ),
      IntroductionModel(
          imagePath: Images.splash3,
          title: "Enjoy",
          description:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry.")
    ];

    ThemeProvider themeProvider = Get.put(ThemeProvider());

    return Scaffold(
      body: GetBuilder<ThemeProvider>(builder: (controler) {
        return Stack(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              child: Get.isDarkMode
                  ? SvgPicture.asset(
                      SvgImages.darkSplashBackground,
                      fit: BoxFit.cover,
                    )
                  : SvgPicture.asset(
                      SvgImages.splashBackground,
                      fit: BoxFit.cover,
                    ),
            ),
            Column(
              children: <Widget>[
                const Hbox(110),
                // Slide items in page view builder
                GestureDetector(
                  onHorizontalDragEnd: (dragEndDetails) {
                    if (dragEndDetails.primaryVelocity! < 0) {
                      // Page forwards
                      log('Move page forwards');
                      _goForward();
                    } else if (dragEndDetails.primaryVelocity! > 0) {
                      // Page backwards
                      log('Move page backwards');
                      _goBack();
                    }
                  },
                  child: SizedBox(
                    height: 600.sp,
                    width: 450.sp,
                    child: Stack(
                      alignment: AlignmentDirectional.center,
                      children: <Widget>[
                        PageView.builder(
                          scrollDirection: Axis.horizontal,
                          controller: _pageController,
                          onPageChanged: _onPageChanged,
                          itemCount: list.length,
                          itemBuilder: (context, i) => Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding:
                                  EdgeInsets.only(left: 20.sp, right: 20.sp),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Hbox(50),
                                  Text(
                                    list[i].title,
                                    style: Get.isDarkMode
                                        ? Ts.bold18(CommonColors.lightGrey)
                                        : Ts.bold18(CommonColors.blackColor),
                                  ),
                                  Hbox(30.sp),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 20.sp, right: 20.sp),
                                    child: Text(
                                      list[i].description,
                                      style: Get.isDarkMode
                                          ? Ts.medium14(CommonColors.lightGrey)
                                          : Ts.medium14(
                                              CommonColors.darkGreyColor),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Hbox(76.sp),
                                  SizedBox(
                                    height: 350.sp,
                                    width: 289,
                                    child: Image.asset(
                                      list[i].imagePath,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // dots and position indicator
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    list.length,
                    (index) => buildDot(index: index),
                  ),
                ),
                Hbox(43.sp),
                //bottom navigation
                bottomNavigationButtons()
              ],
            ),
          ],
        );
      }),
    );
  }

  Widget bottomNavigationButtons() {
    return Column(
      children: [
        BasicButton(
          textName: 'Next',
          onPressed: _currentPage == 2
              ? () {
                  log("***INDEX*** ${widget.index}");
                  if (widget.index == 0) {
                    Get.to(() => const SelectLanguage(
                          index: 0,
                        ));
                  } else if (widget.index == null) {
                    Get.to(() => const SelectLanguage(
                          index: 1,
                        ));
                  }
                }
              : () {
                  _pageController.animateToPage(
                    _currentPage + 1,
                    duration: const Duration(milliseconds: 350),
                    curve: Curves.easeIn,
                  );
                },
          width: 174.sp,
        ),
        Hbox(42.sp),
        InkWell(
          onTap: () {
            log("***INDEX******** ${widget.index}");
            if (widget.index == 0) {
              Get.to(() {
                const SelectLanguage(
                  index: 0,
                );
              });
            } else if (widget.index == null) {
              Get.to(() => const SelectLanguage(
                    index: 1,
                  ));
            }
          },
          child: Text(
            'Skip',
            style: Get.isDarkMode
                ? Ts.semiBold14(CommonColors.primaryTextColor)
                : Ts.semiBold14(CommonColors.darkGreyColor1),
          ),
        ),
      ],
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: _currentPage == index ? 13 : 6,
      decoration: BoxDecoration(
        color: _currentPage == index
            ? CommonColors.mainColor
            : CommonColors.greyColor,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
