import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/utility_funtions.dart/ts.dart';

final defaultPinTheme = PinTheme(
  width: 58.sp,
  height: 55.sp,
  textStyle: Get.isDarkMode
      ? Ts.medium18(CommonColors.whiteColor)
      : Ts.medium18(CommonColors.blackColor),
  decoration: BoxDecoration(
    color: Get.isDarkMode
        ? CommonColors.darkBackgroundColor
        : CommonColors.whiteColor,
    borderRadius: BorderRadius.circular(5.sp),
    border: Border.all(color: const Color(0xffC0CCDA)),
  ),
);
