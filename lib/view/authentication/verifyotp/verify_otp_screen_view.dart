import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:rento/components/buttons.dart';
import 'package:rento/controller/verifyotp/verifyotp_controller.dart';
import 'package:rento/themes/themes.dart';
import 'package:rento/utility_funtions.dart/size.dart';

import '../../../helpers/common_colors.dart';
import '../../../utility_funtions.dart/constants.dart';
import '../../../utility_funtions.dart/ts.dart';

class VerifyOtpScreenView extends StatefulWidget {
  final int? index;
  final String? verificationCode;
  const VerifyOtpScreenView({Key? key, this.index, this.verificationCode})
      : super(key: key);

  @override
  State<VerifyOtpScreenView> createState() => _VerifyOtpScreenViewState();
}

class _VerifyOtpScreenViewState extends State<VerifyOtpScreenView> {
  final TextEditingController _controller = TextEditingController();
  final VerifyController _verifyController =
      Get.isRegistered<VerifyController>()
          ? Get.find<VerifyController>()
          : Get.put(VerifyController());

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Get.put(ThemeProvider());
    return Scaffold(
        backgroundColor: Get.isDarkMode
            ? CommonColors.darkBackgroundColor
            : CommonColors.whiteColor,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hbox(73.sp),
              Text(
                "verification".tr,
                style: Get.isDarkMode
                    ? Ts.semiBold24(CommonColors.whiteColor)
                    : Ts.semiBold24(CommonColors.blackColor),
              ),
              Hbox(15.sp),
              Text(
                "enterCode".tr,
                style: Get.isDarkMode
                    ? Ts.medium14(CommonColors.lightGrey1)
                    : Ts.medium14(CommonColors.darkGreyColor2),
              ),
              Hbox(18.sp),
              Text(
                "${"sentSms".tr} +91 9876543210 ${"sixDig".tr}",
                style: Get.isDarkMode
                    ? Ts.medium12(CommonColors.lightGrey)
                    : Ts.medium12(CommonColors.darkGreyColor3),
              ),
              Hbox(28.sp),
              Text(
                "changePhoneNumber".tr,
                style: Get.isDarkMode
                    ? Ts.medium12(CommonColors.mainColor)
                    : Ts.medium12(const Color(0xff31BBE9)),
              ),
              Hbox(22.sp),
              //Add otp text here
              Pinput(
                length: 6,
                defaultPinTheme: defaultPinTheme,
                controller: _controller,
                pinAnimationType: PinAnimationType.fade,
                /* onCompleted: (String value) {
                        if (value.length == 6) {
                          verify(_controller.text);
                        }
                      },
                      onSubmitted: (pin) async {
                        verify(_controller.text);
                      }, */
              ),
              Hbox(30.sp),
              Align(
                  alignment: Alignment.center,
                  child: Text(
                    "${"resend".tr} 28 ${"sec".tr}",
                    style: Get.isDarkMode
                        ? Ts.medium14(CommonColors.lightGrey)
                        : Ts.medium14(CommonColors.blackColor),
                  )),
              Hbox(27.sp),

              BasicButton(
                textName: "verify".tr,
                onPressed: () {
                  log('This is verificationCode ${widget.verificationCode}');
                  if (widget.index == 0) {
                    _verifyController.verifyOtp(0, _controller.text);
                  } else if (widget.index == 1) {
                    _verifyController.verifyOtp(1, _controller.text);
                  }
                },
                width: double.infinity,
              ),
              Hbox(55.sp),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "dontReceiveCode".tr,
                  style: Get.isDarkMode
                      ? Ts.medium14(CommonColors.lightGrey)
                      : Ts.medium14(CommonColors.blackColor),
                ),
              ),
            ],
          ),
        ));
  }
}
