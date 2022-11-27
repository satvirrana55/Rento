import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/utility_funtions.dart/size.dart';
import 'package:rento/utility_funtions.dart/ts.dart';
import 'package:rento/view/service_provider/common/comman_app_bar.dart';

import 'components/business_profile_text_field.dart';
import 'components/image_picker.dart';
import 'components/selected_categories_text_field.dart';

class BusinessProfile extends StatefulWidget {
  const BusinessProfile({Key? key}) : super(key: key);

  @override
  State<BusinessProfile> createState() => _BusinessProfileState();
}

class _BusinessProfileState extends State<BusinessProfile> {
  final TextEditingController address = TextEditingController(
      text: "1670 Plymouth St, Mountain View, CA 94043, USA");
  final selectServiceArea = TextEditingController(text: "8Km");
  final TextEditingController accountHolder =
      TextEditingController(text: "Account holder");
  final TextEditingController accountNo =
      TextEditingController(text: "Account no.");
  final TextEditingController ifscCode =
      TextEditingController(text: "IFSC Code");
  final TextEditingController cars = TextEditingController(text: "Cars");
  final TextEditingController bikes = TextEditingController(text: "Bikes");
  final TextEditingController compluterlaptop =
      TextEditingController(text: "Computer & Laptop");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60.0),
          child: CommonAppBar(
            elevation: 0.5,
            tittle: "businessProfile".tr,
          ),
        ),
        backgroundColor: Get.isDarkMode
            ? CommonColors.darkBackgroundColor
            : CommonColors.whiteColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 20.sp, right: 20.sp, top: 25.sp),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const BusinessImagePicker(),
                Hbox(40.sp),
                InputTextFieldBusinessProfile(
                  textEditingController: address,
                  label: "address".tr,
                ),
                InputTextFieldBusinessProfile(
                  textEditingController: selectServiceArea,
                  label: "selectServiceArea".tr,
                ),
                Hbox(12.sp),
                Padding(
                  padding: EdgeInsets.only(left: 6.sp),
                  child: Text("bankDetails".tr,
                      style: Get.isDarkMode
                          ? Ts.semiBold14(CommonColors.whiteColor)
                          : Ts.semiBold14(CommonColors.blackColor)),
                ),
                Hbox(15.sp),
                InputTextFieldBusinessProfile(
                  textEditingController: accountHolder,
                ),
                InputTextFieldBusinessProfile(
                  textEditingController: accountNo,
                ),
                InputTextFieldBusinessProfile(
                  textEditingController: ifscCode,
                ),
                Hbox(12.sp),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("selectedcategories".tr,
                      style: Get.isDarkMode
                          ? Ts.semiBold14(CommonColors.whiteColor)
                          : Ts.semiBold14(CommonColors.blackColor)),
                ),
                Hbox(10.sp),
                InputTextFieldSelectCategories(
                  textEditingController: cars,
                ),
                InputTextFieldSelectCategories(
                  textEditingController: bikes,
                ),
                InputTextFieldSelectCategories(
                  textEditingController: compluterlaptop,
                ),
                const SizedBox(
                  height: 3,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 8.sp),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "moreCat".tr,
                        style: Get.isDarkMode
                            ? Ts.medium16(CommonColors.primaryTextColor)
                            : Ts.medium16(CommonColors.primaryDarkBlue2),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 22,
                ),
              ],
            ),
          ),
        ));
  }
}
