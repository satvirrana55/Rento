import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rento/controller/faq/faq_controller.dart';
import 'package:rento/helpers/common_colors.dart';

import '../../../../controller/faq/faq_controller.dart';
import '../../../../utility_funtions.dart/ts.dart';

class FAQScreen extends StatefulWidget {
  const FAQScreen({Key? key}) : super(key: key);

  @override
  State<FAQScreen> createState() => _FAQScreenState();
}

class _FAQScreenState extends State<FAQScreen> {
  final FAQController _faqController = Get.isRegistered<FAQController>()
      ? Get.find<FAQController>()
      : Get.put(FAQController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.isDarkMode
          ? CommonColors.darkBackgroundColor
          : CommonColors.whiteColor,
      appBar: AppBar(
        shadowColor: CommonColors.whiteColor,
        backgroundColor:
            Get.isDarkMode ? CommonColors.blackColor : CommonColors.whiteColor,
        automaticallyImplyLeading: true,
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: Icon(Icons.arrow_back,
                color: Get.isDarkMode
                    ? CommonColors.whiteColor
                    : CommonColors.blackColor)),
        title: Text(
          "faq".tr,
          style: Get.isDarkMode
              ? Ts.semiBold18(CommonColors.whiteColor)
              : Ts.semiBold18(CommonColors.blackColor),
        ),
        elevation: 1,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          const SizedBox(
            height: 5.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding:
                    EdgeInsets.only(left: 30.sp, top: 15.sp, bottom: 15.sp),
                child: Text(
                  "signingupRento".tr,
                  style: Get.isDarkMode
                      ? Ts.semiBold14(CommonColors.whiteColor)
                      : Ts.semiBold14(CommonColors.darkGreyColor5),
                ),
              ),
              _faqController.isShow1
                  ? Padding(
                      padding: EdgeInsets.only(right: 25.sp),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            _faqController.isShow1 = false;
                          });
                        },
                        icon: const Icon(
                          Icons.keyboard_arrow_up,
                          color: CommonColors.greyColor,
                        ),
                      ),
                    )
                  : Padding(
                      padding: EdgeInsets.only(right: 25.sp),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            _faqController.isShow1 = true;
                          });
                        },
                        icon: const Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: CommonColors.greyColor,
                        ),
                      ),
                    )
            ],
          ),
          _faqController.isShow1
              ? Container(
                  color: Get.isDarkMode
                      ? CommonColors.lightDark1
                      : CommonColors.bgColor,
                  height: 100.sp,
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.all(25.sp),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud',
                      style: Get.isDarkMode
                          ? Ts.regular10(CommonColors.lightGrey7)
                          : Ts.regular10(CommonColors.greyColor9),
                    ),
                  ),
                )
              : const SizedBox(
                  height: 0.0,
                ),
          SizedBox(
            height: 2.sp,
            child: const Divider(
              color: CommonColors.greyColor,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding:
                    EdgeInsets.only(left: 30.sp, top: 15.sp, bottom: 15.sp),
                child: Text(
                  "subscription".tr,
                  style: Get.isDarkMode
                      ? Ts.semiBold14(CommonColors.whiteColor)
                      : Ts.semiBold14(CommonColors.darkGreyColor5),
                ),
              ),
              _faqController.isShow2
                  ? Padding(
                      padding: EdgeInsets.only(right: 25.sp),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            _faqController.isShow2 = false;
                          });
                        },
                        icon: const Icon(
                          Icons.keyboard_arrow_up,
                          color: CommonColors.greyColor,
                        ),
                      ),
                    )
                  : Padding(
                      padding: EdgeInsets.only(right: 25.sp),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            _faqController.isShow2 = true;
                          });
                        },
                        icon: const Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: CommonColors.greyColor,
                        ),
                      ),
                    )
            ],
          ),
          _faqController.isShow2
              ? Container(
                  color: Get.isDarkMode
                      ? CommonColors.lightDark1
                      : CommonColors.bgColor,
                  height: 100.sp,
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.all(25.sp),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud',
                      style: Get.isDarkMode
                          ? Ts.regular10(CommonColors.lightGrey7)
                          : Ts.regular10(CommonColors.greyColor9),
                    ),
                  ),
                )
              : const SizedBox(
                  height: 0.0,
                ),
          SizedBox(
            height: 2.sp,
            child: const Divider(
              color: CommonColors.greyColor,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding:
                    EdgeInsets.only(left: 30.sp, top: 15.sp, bottom: 15.sp),
                child: Text(
                  "delivery".tr,
                  style: Get.isDarkMode
                      ? Ts.semiBold14(CommonColors.whiteColor)
                      : Ts.semiBold14(CommonColors.darkGreyColor5),
                ),
              ),
              _faqController.isShow3
                  ? Padding(
                      padding: EdgeInsets.only(right: 25.sp),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            _faqController.isShow3 = false;
                          });
                        },
                        icon: const Icon(
                          Icons.keyboard_arrow_up,
                          color: CommonColors.greyColor,
                        ),
                      ),
                    )
                  : Padding(
                      padding: EdgeInsets.only(right: 25.sp),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            _faqController.isShow3 = true;
                          });
                        },
                        icon: const Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: CommonColors.greyColor,
                        ),
                      ),
                    )
            ],
          ),
          _faqController.isShow3
              ? Container(
                  color: Get.isDarkMode
                      ? CommonColors.lightDark1
                      : CommonColors.bgColor,
                  height: 100.sp,
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.all(25.sp),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud',
                      style: Get.isDarkMode
                          ? Ts.regular10(CommonColors.lightGrey7)
                          : Ts.regular10(CommonColors.greyColor9),
                    ),
                  ),
                )
              : const SizedBox(
                  height: 0.0,
                ),
          SizedBox(
            height: 2.sp,
            child: const Divider(
              color: CommonColors.greyColor,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding:
                    EdgeInsets.only(left: 30.sp, top: 15.sp, bottom: 15.sp),
                child: Text(
                  "paymentandRefund".tr,
                  style: Get.isDarkMode
                      ? Ts.semiBold14(CommonColors.whiteColor)
                      : Ts.semiBold14(CommonColors.darkGreyColor5),
                ),
              ),
              _faqController.isShow4
                  ? Padding(
                      padding: EdgeInsets.only(right: 25.sp),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            _faqController.isShow4 = false;
                          });
                        },
                        icon: const Icon(
                          Icons.keyboard_arrow_up,
                          color: CommonColors.greyColor,
                        ),
                      ),
                    )
                  : Padding(
                      padding: EdgeInsets.only(right: 25.sp),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            _faqController.isShow4 = true;
                          });
                        },
                        icon: const Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: CommonColors.greyColor,
                        ),
                      ),
                    )
            ],
          ),
          _faqController.isShow4
              ? Container(
                  color: Get.isDarkMode
                      ? CommonColors.lightDark1
                      : CommonColors.bgColor,
                  height: 100.sp,
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.all(25.sp),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud',
                      style: Get.isDarkMode
                          ? Ts.regular10(CommonColors.lightGrey7)
                          : Ts.regular10(CommonColors.greyColor9),
                    ),
                  ),
                )
              : const SizedBox(
                  height: 0.0,
                ),
          SizedBox(
            height: 2.sp,
            child: const Divider(
              color: CommonColors.greyColor,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding:
                    EdgeInsets.only(left: 30.sp, top: 15.sp, bottom: 15.sp),
                child: Text(
                  "servicesandMaintenance".tr,
                  style: Get.isDarkMode
                      ? Ts.semiBold14(CommonColors.whiteColor)
                      : Ts.semiBold14(CommonColors.darkGreyColor5),
                ),
              ),
              _faqController.isShow5
                  ? Padding(
                      padding: EdgeInsets.only(right: 25.sp),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            _faqController.isShow5 = false;
                          });
                        },
                        icon: const Icon(
                          Icons.keyboard_arrow_up,
                          color: CommonColors.greyColor,
                        ),
                      ),
                    )
                  : Padding(
                      padding: EdgeInsets.only(right: 25.sp),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            _faqController.isShow5 = true;
                          });
                        },
                        icon: const Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: CommonColors.greyColor,
                        ),
                      ),
                    )
            ],
          ),
          _faqController.isShow5
              ? Container(
                  color: Get.isDarkMode
                      ? CommonColors.lightDark1
                      : CommonColors.bgColor,
                  height: 100.sp,
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.all(25.sp),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud',
                      style: Get.isDarkMode
                          ? Ts.regular10(CommonColors.lightGrey7)
                          : Ts.regular10(CommonColors.greyColor9),
                    ),
                  ),
                )
              : const SizedBox(
                  height: 0.0,
                ),
          SizedBox(
            height: 2.sp,
            child: const Divider(
              color: CommonColors.greyColor,
            ),
          ),
        ],
      )),
    );
  }
}
