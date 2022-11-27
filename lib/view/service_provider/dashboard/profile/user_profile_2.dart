import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rento/components/images.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/utility_funtions.dart/size.dart';
import 'package:rento/utility_funtions.dart/ts.dart';
import 'package:rento/view/service_provider/dashboard/profile/components/text_field.dart';

import '../../common/comman_app_bar.dart';

class UserProfile2 extends StatefulWidget {
  const UserProfile2({Key? key}) : super(key: key);

  @override
  State<UserProfile2> createState() => _UserProfile2State();
}

class _UserProfile2State extends State<UserProfile2> {
  final TextEditingController name = TextEditingController(text: "Aman Kumar");
  final TextEditingController email =
      TextEditingController(text: "amankumar@gmail.com");
  final TextEditingController phoneNumber =
      TextEditingController(text: "+91 9876543210");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60.0),
          child: CommonAppBar(
            elevation: 1,
            tittle: "userProfile".tr,
            backColor: Colors.white,
            color: Colors.black,
          ),
        ),
        backgroundColor: Get.isDarkMode
            ? CommonColors.darkBackgroundColor
            : CommonColors.primaryBackgroundColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 19),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 162.sp,
                  decoration: BoxDecoration(
                    color: Get.isDarkMode
                        ? CommonColors.lightDark1
                        : CommonColors.whiteColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Container(
                          height: 102.sp,
                          width: 102.sp,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(200),
                          ),
                          child: Stack(children: [
                            const CircleAvatar(
                              radius: 100,
                              backgroundColor: CommonColors.blackColor,
                              backgroundImage: AssetImage(Images.mask),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 0.sp, top: 10),
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  height: 26,
                                  width: 26,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: CommonColors.whiteColor),
                                    color: CommonColors.primaryButtonColor,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: const Center(
                                    child: Icon(
                                      Icons.camera_alt,
                                      size: 15,
                                      color: CommonColors.whiteColor,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ]),
                        ),
                      )
                    ],
                  ),
                ),
                Hbox(17.sp),
                Text("userInfo".tr,
                    style: Get.isDarkMode
                        ? Ts.semiBold12(CommonColors.whiteColor)
                        : Ts.semiBold12(const Color(0xff61666A))),
                Hbox(17.sp),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Get.isDarkMode
                        ? CommonColors.lightDark1
                        : CommonColors.whiteColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.only(left: 22.sp, right: 22.sp, top: 20.sp),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'userName'.tr,
                            style: Ts.medium12(CommonColors.primaryTextColor),
                          ),
                          Hbox(9.sp),
                          ProfileInputTextField(
                            textEditingController: name,
                          ),
                          Hbox(16.sp),
                          Text(
                            "email".tr,
                            style: Ts.medium12(CommonColors.primaryTextColor),
                          ),
                          Hbox(9.sp),
                          ProfileInputTextField(
                            textEditingController: email,
                          ),
                          Hbox(16.sp),
                          Text(
                            'phone'.tr,
                            style: Ts.medium12(CommonColors.primaryTextColor),
                          ),
                          Hbox(9.sp),
                          ProfileInputTextField(
                            textEditingController: phoneNumber,
                          ),
                          Hbox(30.sp),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
              color: Get.isDarkMode
                  ? CommonColors.blackColor
                  : CommonColors.whiteColor,
              border: Border(
                  top: BorderSide(
                      width: 0.5,
                      color: Get.isDarkMode
                          ? CommonColors.greyColor5
                          : Colors.white))),
          child: Padding(
            padding: EdgeInsets.only(
                bottom: 14.sp, top: 14.sp, left: 24, right: 24.sp),
            child: SizedBox(
              height: 61.sp,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  shadowColor: CommonColors.whiteColor,
                  side: const BorderSide(
                    color: CommonColors.primaryButtonColor,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  primary: Get.isDarkMode
                      ? CommonColors.blackColor
                      : CommonColors.whiteColor,
                ),
                onPressed: () {},
                child: Text("logout".tr,
                    style: Ts.medium16(CommonColors.primaryTextColor)),
              ),
            ),
          ),
        ));
  }
}
