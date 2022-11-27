import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rento/themes/themes.dart';
import 'package:rento/utility_funtions.dart/ts.dart';

import '../helpers/common_colors.dart';

class BasicButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String? textName;
  final double? width;

  const BasicButton({
    Key? key,
    this.textName,
    this.onPressed,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 59.sp,
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
          primary: CommonColors.mainColor,
        ),
        onPressed: () {
          onPressed!();
        },
        child:
            Text(textName ?? "", style: Ts.medium18(CommonColors.whiteColor)),
      ),
    );
  }
}

class BorderButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String? textName;
  final double? width;

  const BorderButton({
    Key? key,
    this.textName,
    this.onPressed,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Get.put(ThemeProvider());

    return SizedBox(
      height: 59.sp,
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
            side: BorderSide(
              color: Get.isDarkMode
                  ? CommonColors.mainColor
                  : const Color(0xff707070),
              width: 1.0,
            ),
          ),
          primary: Get.isDarkMode
              ? CommonColors.darkBackgroundColor
              : CommonColors.whiteColor,
        ),
        onPressed: () {
          onPressed!();
        },
        child: Text(textName ?? "",
            textAlign: TextAlign.center,
            style: Get.isDarkMode
                ? Ts.medium18(CommonColors.mainColor)
                : Ts.medium18(
                    const Color(0xff707070),
                  )),
      ),
    );
  }
}

class GreenBorderButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String? textName;
  final double? width;

  const GreenBorderButton({
    Key? key,
    this.textName,
    this.onPressed,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPressed!();
      },
      child: Container(
        height: 51.sp,
        width: width,
        decoration: BoxDecoration(
          color: Get.isDarkMode
              ? CommonColors.blackColor
              : CommonColors.whiteColor,
          borderRadius: BorderRadius.circular(50.sp),
          border: Border.all(color: CommonColors.mainColor, width: 1),
        ),
        child: Center(
            child: Text(textName ?? "",
                style: Get.isDarkMode
                    ? Ts.medium18(CommonColors.lightGreen1)
                    : Ts.medium18(CommonColors.mainColor))),
      ),
    );
  }
}
