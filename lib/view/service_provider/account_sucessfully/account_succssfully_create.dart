import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rento/components/images.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/utility_funtions.dart/ts.dart';

import '../common/common_button.dart';
import '../dashboard/home.dart';

class AccountCreateSuccessfully extends StatelessWidget {
  const AccountCreateSuccessfully({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.isDarkMode
          ? CommonColors.darkBackgroundColor
          : CommonColors.whiteColor,
      body: Padding(
        padding: const EdgeInsets.only(
          top: 203,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  color: Colors.transparent,
                  height: 198.sp,
                  width: 198.sp,
                  child: Image.asset(Images.thumbs)),
              SizedBox(
                height: 73.sp,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35),
                child: Container(
                  width: 359.sp,
                  color: Colors.transparent,
                  child: Text(
                    "yourAccoSucessGen".tr,
                    style: Get.isDarkMode
                        ? Ts.semiBold32(CommonColors.whiteColor)
                        : Ts.semiBold32(const Color.fromRGBO(48, 48, 48, 1)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 25, left: 46, right: 46),
        child: CommonButton(
          tittle: "doneButton".tr,
          navigator: const ServiceProviderDashoard(),
        ),
      ),
    );
  }
}
