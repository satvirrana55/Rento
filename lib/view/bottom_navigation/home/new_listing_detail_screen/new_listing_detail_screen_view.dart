import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rento/components/buttons.dart';
import 'package:rento/components/images.dart';
import 'package:rento/controller/new_listing_detail/new_listing_controller.dart';
import 'package:rento/models/home/image_model.dart';
import 'package:rento/themes/themes.dart';
import 'package:rento/utility_funtions.dart/size.dart';
import 'package:rento/utility_funtions.dart/ts.dart';

import '../../../../helpers/common_colors.dart';

class NewListingDetailScreen extends StatefulWidget {
  const NewListingDetailScreen({Key? key}) : super(key: key);

  @override
  State<NewListingDetailScreen> createState() => _NewListingDetailScreenState();
}

class _NewListingDetailScreenState extends State<NewListingDetailScreen> {
  final NewListingController _newListingController =
      Get.isRegistered<NewListingController>()
          ? Get.find<NewListingController>()
          : Get.put(NewListingController());
  List<ImagesModel> imagesList = [
    ImagesModel(
      imagePath: Images.redcar,
    ),
    ImagesModel(
      imagePath: Images.redcar,
    ),
    ImagesModel(
      imagePath: Images.redcar,
    ),
  ];

  int _currentPage = 0;
  late PageController _pageController = PageController(initialPage: 0);
  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Get.put(ThemeProvider());

    return Scaffold(
        backgroundColor: Get.isDarkMode
            ? CommonColors.darkBackgroundColor
            : CommonColors.whiteColor,
        appBar: AppBar(
          backgroundColor: Get.isDarkMode
              ? CommonColors.darkBackgroundColor
              : CommonColors.whiteColor,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            color: Get.isDarkMode
                ? CommonColors.whiteColor
                : CommonColors.blackColor,
            onPressed: () {
              Get.back();
            },
          ),
          title: Text(
            'MZ ZS EV',
            style: Get.isDarkMode
                ? Ts.semiBold18(CommonColors.whiteColor)
                : Ts.semiBold18(CommonColors.blackColor),
          ),
        ),
        body: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.height,
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: SizedBox(
                height: 328.sp,
                width: double.infinity,
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: <Widget>[
                    PageView.builder(
                      scrollDirection: Axis.horizontal,
                      controller: _pageController,
                      onPageChanged: _onPageChanged,
                      itemCount: imagesList.length,
                      itemBuilder: (context, i) => Align(
                        alignment: Alignment.center,
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 327.sp,
                              width: double.infinity,
                              child: Image.asset(
                                imagesList[i].imagePath,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              top: 280.sp,
                              left: 180.sp,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: List.generate(
                                  imagesList.length,
                                  (index) => buildDot(index: index),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 300.sp,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                //height: 541.sp,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Get.isDarkMode
                        ? CommonColors.darkBackgroundColor
                        : CommonColors.whiteColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.sp),
                      topRight: Radius.circular(40.sp),
                    )),
                child: Padding(
                  padding:
                      EdgeInsets.only(left: 21.sp, top: 32.sp, right: 21.sp),
                  child: ListView(
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'MZ ZS EV',
                              style: Get.isDarkMode
                                  ? Ts.semiBold16(CommonColors.whiteColor)
                                  : Ts.semiBold16(CommonColors.blackColor),
                            ),
                            const Hbox(10),
                            Text(
                              '₹ 1000/Per ${"day".tr}',
                              style: Ts.regular14(CommonColors.mainColor),
                            ),
                            Hbox(10.sp),
                            const Divider(
                              color: CommonColors.greyColor,
                            ),
                            const Hbox(10),
                            Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur enim enim, ultricies id rutrum sit amet, consequat et odio. Proin nec eleifend sem. Mauris malesuada viverra turpis, ut ornare magna auctor pulvinar. Nullam vel volutpat purus, in euismod tortor. Sed luctus bibendum sem, sed tempus orci blandit non.',
                              style: Get.isDarkMode
                                  ? Ts.regular12(CommonColors.lightGrey3)
                                  : Ts.regular12(const Color(0xff98A0A8)),
                            ),
                            const Hbox(21),
                            BasicButton(
                              onPressed: () {
                                _newListingController.selectDate();
                              },
                              textName: "book".tr,
                              width: double.infinity,
                            ),
                            const Hbox(10),
                            const Divider(
                              color: CommonColors.greyColor,
                            ),
                            const Hbox(10),
                            Row(
                              children: [
                                SizedBox(
                                    height: 56.sp,
                                    width: 56.sp,
                                    child: Image.asset(
                                      Images.jutemill,
                                      fit: BoxFit.cover,
                                    )),
                                Wbox(16.sp),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Royal cars',
                                      style: Get.isDarkMode
                                          ? Ts.medium14(CommonColors.whiteColor)
                                          : Ts.medium14(
                                              CommonColors.blackColor),
                                    ),
                                    const Hbox(7),
                                    Text(
                                      'Gurugram',
                                      style:
                                          Ts.regular12(const Color(0xff9E9E9E)),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 16.sp,
                                  color: const Color(0xff919191),
                                ),
                              ],
                            ),
                            const Hbox(10),
                            const Divider(
                              color: CommonColors.greyColor,
                            ),
                            const Hbox(20),
                            Text(
                              "termsofUse".tr,
                              style: Get.isDarkMode
                                  ? Ts.semiBold14(CommonColors.whiteColor)
                                  : Ts.semiBold14(CommonColors.mainColor),
                            ),
                            const Hbox(10),
                            Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur enim enim, ultricies id rutrum sit amet, consequat et odio. Proin nec eleifend sem. Mauris malesuada viverra turpis, ut ornare magna auctor pulvinar. Nullam vel volutpat purus, in euismod',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10.sp,
                                  color: Get.isDarkMode
                                      ? CommonColors.lightGrey3
                                      : const Color(0xff44474A),
                                  height: 2),
                            ),
                            const Hbox(10),
                          ]),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: _currentPage == index ? 12 : 6,
      decoration: BoxDecoration(
        color: _currentPage == index
            ? CommonColors.mainColor
            : CommonColors.greyColor,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
