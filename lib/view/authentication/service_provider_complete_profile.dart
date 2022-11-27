import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/utility_funtions.dart/navigator_helper.dart';
import 'package:rento/utility_funtions.dart/size.dart';
import 'package:rento/view/service_provider/common/text_field.dart';
import 'package:rento/view/service_provider/maps/maps.dart';

import '../../utility_funtions.dart/ts.dart';

class ServiceProviderCompleteProfile extends StatefulWidget {
  const ServiceProviderCompleteProfile({Key? key}) : super(key: key);

  @override
  State<ServiceProviderCompleteProfile> createState() =>
      _ServiceProviderCompleteProfileState();
}

class _ServiceProviderCompleteProfileState
    extends State<ServiceProviderCompleteProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Get.isDarkMode
            ? CommonColors.darkBackgroundColor
            : CommonColors.whiteColor,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Hbox(73.sp),
                Text(
                  "comProf".tr,
                  style: Get.isDarkMode
                      ? Ts.semiBold24(CommonColors.whiteColor)
                      : Ts.semiBold24(CommonColors.blackColor),
                ),
                Hbox(16.sp),
                Container(
                  height: 48.sp,
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xff29BF79)),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(100))),
                  child: Padding(
                    padding: const EdgeInsets.all(1),
                    child: Row(
                      children: [
                        InkWell(
                          child: Container(
                            height: 45.sp,
                            width: MediaQuery.of(context).size.width / 2.2,
                            decoration: BoxDecoration(
                                color: const Color(0xff29BF79),
                                border:
                                    Border.all(color: const Color(0xff29BF79)),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(70))),
                            child: Center(
                              child: Text(
                                'individual'.tr,
                                style: Ts.medium15(CommonColors.whiteColor),
                              ),
                            ),
                          ),
                        ),
                        const Spacer(
                          flex: 1,
                        ),
                        InkWell(
                          child: Container(
                            height: 45.sp,
                            width: (MediaQuery.of(context).size.width / 2.3).sp,
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(70))),
                            child: Center(
                              child: Text(
                                'company'.tr,
                                style: Ts.medium15(
                                    const Color.fromRGBO(147, 162, 168, 1)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Hbox(20.sp),
                EntryTextField(
                  label: "userName".tr,
                ),
                Hbox(11.sp),
                EntryTextField(
                  label: "email".tr,
                ),
                Hbox(11.sp),
                Container(
                  width: 126.sp,
                  height: 129.sp,
                  decoration: BoxDecoration(
                    border: Border.all(color: CommonColors.primaryLightGreen2),
                  ),
                  // ignore: prefer_const_literals_to_create_immutables
                  child: Column(children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 40, bottom: 5),
                      child: Center(
                          child: Icon(
                        Icons.camera_alt_outlined,
                        size: 20,
                        color: CommonColors.greyColor,
                      )),
                    ),
                    Text(
                      'logo'.tr,
                      style: Ts.medium14(CommonColors.greyColor),
                    )
                  ]),
                ),
                Hbox(92.sp),
                SizedBox(
                  height: 59.sp,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      shadowColor: Colors.transparent,
                      side: const BorderSide(
                        color: CommonColors.primaryButtonColor,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      primary: CommonColors.primaryButtonColor,
                    ),
                    onPressed: () {
                      Push.to(const Maps(), context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: Text("continueButton".tr,
                          style: Ts.medium18(CommonColors.whiteColor)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
