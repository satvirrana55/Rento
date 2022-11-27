import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/utility_funtions.dart/ts.dart';
import 'package:rento/view/service_provider/common/comman_app_bar.dart';

import 'components/tabs.dart';

class Filter extends StatefulWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  var index = 0;
  Color defaultColor0 = CommonColors.blackColor;
  Color defaultOnPress0 = Colors.transparent;
  Color defaultColor1 = CommonColors.blackColor;
  Color defaultOnPress1 = Colors.transparent;
  Color defaultColor2 = CommonColors.blackColor;
  Color defaultOnPress2 = Colors.transparent;
  Color defaultColor3 = CommonColors.blackColor;
  Color defaultOnPress3 = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.isDarkMode
            ? CommonColors.darkBackgroundColor
            : CommonColors.whiteColor,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60.0),
          child: CommonAppBar(
            elevation: 0.5,
            tittle: "filter".tr,
          ),
        ),
        body: Column(
          children: [
            const TabsView(),
            Container(height: 1, color: const Color.fromRGBO(0, 0, 0, 0.03)),
          ],
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
                        : Colors.white)),
          ),
          child: Padding(
            padding: EdgeInsets.only(
                bottom: 14.sp, top: 14.sp, left: 24, right: 24.sp),
            child: SizedBox(
              height: 61.sp,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    shadowColor: CommonColors.primaryButtonColor,
                    side: const BorderSide(
                      color: CommonColors.primaryButtonColor,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    primary: CommonColors.primaryButtonColor),
                onPressed: () {},
                child: Text("apply".tr,
                    style: Ts.semiBold18(CommonColors.whiteColor)),
              ),
            ),
          ),
        ));
  }
}
