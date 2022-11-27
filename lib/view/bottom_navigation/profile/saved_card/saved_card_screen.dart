import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rento/components/buttons.dart';
import 'package:rento/components/images.dart';
import 'package:rento/utility_funtions.dart/navigator_helper.dart';
import 'package:rento/utility_funtions.dart/size.dart';
import 'package:rento/utility_funtions.dart/ts.dart';

import '../../../../helpers/common_colors.dart';
import '../../../add_new_card.dart';
import '../../../service_provider/common/comman_app_bar.dart';

class SavedCardScreen extends StatefulWidget {
  const SavedCardScreen({Key? key}) : super(key: key);

  @override
  State<SavedCardScreen> createState() => _SavedCardScreenState();
}

class _SavedCardScreenState extends State<SavedCardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.isDarkMode
          ? CommonColors.darkBackgroundColor
          : const Color(0xffF3F3F3),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.sp),
        child: CommonAppBar(
            tittle: "savedCards".tr,
            color: Colors.transparent,
            elevation: Get.isDarkMode ? 0.5 : 0),
      ),
      body: Padding(
        padding: EdgeInsets.all(18.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 14.sp),
              child: Text(
                "cards".tr,
                style: Get.isDarkMode
                    ? Ts.semiBold16(CommonColors.whiteColor)
                    : Ts.semiBold16(CommonColors.blackColor),
              ),
            ),
            Hbox(17.sp),
            Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20.sp, right: 10.sp),
                  child: Image.asset(
                    Images.card,
                  ),
                ),
                Positioned(
                    top: 104.sp,
                    left: 55.sp,
                    right: 40.sp,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //const Hbox(10),
                        Text(
                          'XXXX XXXX XXXX 2154',
                          style: Ts.medium14(const Color(0xffD9D9D9)),
                        ),
                        const Hbox(13),
                        Text(
                          '01/24',
                          style: Ts.medium14(const Color(0xffA4A9AC)),
                        ),
                        const Hbox(22),
                        IntrinsicHeight(
                          child: Row(
                            children: [
                              Text(
                                "debitCard".tr,
                                style: Ts.medium14(CommonColors.mainColor),
                              ),
                              const Spacer(),
                              Text(
                                "edit".tr,
                                style: Ts.medium14(CommonColors.whiteColor),
                              ),
                              const Wbox(10),
                              VerticalDivider(
                                thickness: 1,
                                width: 10,
                                color: CommonColors.whiteColor.withOpacity(0.3),
                              ),
                              const Wbox(10),
                              Text(
                                "delete".tr,
                                style: Ts.medium14(CommonColors.whiteColor),
                              ),
                            ],
                          ),
                        ),
                        Hbox(5.sp),
                      ],
                    ))
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 93.sp,
        decoration: BoxDecoration(
          color: Get.isDarkMode
              ? CommonColors.blackColor
              : CommonColors.whiteColor,
          border: Border(
              top: BorderSide(
                  width: 0.5,
                  color:
                      Get.isDarkMode ? CommonColors.greyColor5 : Colors.white)),
        ),
        child: Padding(
          padding: EdgeInsets.only(
              left: 23.sp, right: 23.sp, top: 15.sp, bottom: 15.sp),
          child: GreenBorderButton(
            onPressed: () {
              Push.to(const AddNewCard(), context);
            },
            textName: "addNewCard".tr,
            width: double.infinity,
          ),
        ),
      ),
    );
  }
}
