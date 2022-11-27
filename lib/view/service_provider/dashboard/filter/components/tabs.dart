import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/utility_funtions.dart/ts.dart';
import 'package:rento/view/service_provider/dashboard/filter/components/price.dart';

import 'brand.dart';
import 'categories.dart';

class TabsView extends StatefulWidget {
  const TabsView({Key? key}) : super(key: key);

  @override
  State<TabsView> createState() => _TabsViewState();
}

class _TabsViewState extends State<TabsView> {
  var index = 0;
  Color defaultColor0 = CommonColors.blackColor;
  Color defaultOnPress0 = Colors.transparent;
  Color defaultColor1 = CommonColors.blackColor;
  Color defaultOnPress1 = Colors.transparent;
  Color defaultColor2 = CommonColors.blackColor;
  Color defaultOnPress2 = Colors.transparent;
  Color defaultColor3 = CommonColors.blackColor;
  Color defaultOnPress3 = Colors.transparent;
  Color defaultOnPress11 = CommonColors.lightGrey17;
  Color defaultOnPress12 = CommonColors.lightGrey17;
  Color defaultOnPress13 = CommonColors.lightGrey17;
  Color defaultOnPress14 = CommonColors.lightGrey17;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              height: 59.sp,
              width: 135.sp,
              color: defaultOnPress0,
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      index = 0;

                      defaultColor0 = CommonColors.whiteColor;
                      defaultOnPress0 = CommonColors.primaryButtonColor;
                      defaultColor1 = CommonColors.blackColor;
                      defaultOnPress1 = Colors.transparent;
                      defaultColor2 = CommonColors.blackColor;
                      defaultOnPress2 = Colors.transparent;
                      defaultColor3 = CommonColors.blackColor;
                      defaultOnPress3 = Colors.transparent;
                      defaultOnPress11 = CommonColors.whiteColor;
                      defaultOnPress12 = CommonColors.lightGrey17;
                      defaultOnPress13 = CommonColors.lightGrey17;
                      defaultOnPress14 = CommonColors.lightGrey17;
                    });
                  },
                  child: Text(
                    "categories".tr,
                    style: Get.isDarkMode
                        ? Ts.medium14(defaultOnPress11)
                        : Ts.medium14(defaultColor0),
                  )),
            ),
            Container(
                width: 135.sp,
                height: .5,
                color: CommonColors.primaryLightGrey7),
            Container(
              color: defaultOnPress1,
              height: 59.sp,
              width: 135.sp,
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      index = 1;
                      defaultColor0 = CommonColors.blackColor;
                      defaultOnPress0 = Colors.transparent;
                      defaultColor1 = CommonColors.whiteColor;
                      defaultOnPress1 = CommonColors.primaryButtonColor;
                      defaultColor2 = CommonColors.blackColor;
                      defaultOnPress2 = Colors.transparent;
                      defaultColor3 = CommonColors.blackColor;
                      defaultOnPress3 = Color.fromRGBO(0, 0, 0, 0);
                      defaultOnPress11 = CommonColors.lightGrey17;
                      defaultOnPress12 = CommonColors.whiteColor;
                      defaultOnPress13 = CommonColors.lightGrey17;
                      defaultOnPress14 = CommonColors.lightGrey17;
                    });
                  },
                  child: Text(
                    "price".tr,
                    style: Get.isDarkMode
                        ? Ts.medium14(defaultOnPress12)
                        : Ts.medium14(defaultColor1),
                  )),
            ),
            Container(
                width: 135.sp,
                height: .5,
                color: CommonColors.primaryLightGrey7),
            Container(
              color: defaultOnPress2,
              height: 59.sp,
              width: 135.sp,
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      index = 2;
                      defaultColor0 = CommonColors.blackColor;
                      defaultOnPress0 = Colors.transparent;
                      defaultColor1 = CommonColors.blackColor;
                      defaultOnPress1 = Colors.transparent;
                      defaultColor2 = CommonColors.whiteColor;
                      defaultOnPress2 = CommonColors.primaryButtonColor;
                      defaultColor3 = CommonColors.blackColor;
                      defaultOnPress3 = Colors.transparent;
                      defaultOnPress11 = CommonColors.lightGrey17;
                      defaultOnPress12 = CommonColors.lightGrey17;
                      defaultOnPress13 = CommonColors.whiteColor;
                      defaultOnPress14 = CommonColors.lightGrey17;
                    });
                  },
                  child: Text(
                    "brand".tr,
                    style: Get.isDarkMode
                        ? Ts.medium14(defaultOnPress13)
                        : Ts.medium14(defaultColor2),
                  )),
            ),
            Container(
                width: 135.sp,
                height: .5,
                color: CommonColors.primaryLightGrey7),
            Container(
              color: defaultOnPress3,
              height: 59.sp,
              width: 135.sp,
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      index = 3;
                      defaultColor0 = CommonColors.blackColor;
                      defaultOnPress0 = Colors.transparent;
                      defaultColor1 = CommonColors.blackColor;
                      defaultOnPress1 = Colors.transparent;
                      defaultColor2 = CommonColors.blackColor;
                      defaultOnPress2 = Colors.transparent;
                      defaultColor3 = CommonColors.whiteColor;
                      defaultOnPress3 = CommonColors.primaryButtonColor;
                      defaultOnPress11 = CommonColors.lightGrey17;
                      defaultOnPress12 = CommonColors.lightGrey17;
                      defaultOnPress13 = CommonColors.lightGrey17;
                      defaultOnPress14 = CommonColors.whiteColor;
                    });
                  },
                  child: Text(
                    "vendors".tr,
                    style: Get.isDarkMode
                        ? Ts.medium14(defaultOnPress14)
                        : Ts.medium14(defaultColor3),
                  )),
            ),
            Container(
                width: 135.sp,
                height: .5,
                color: CommonColors.primaryLightGrey7)
          ]),
          Container(
              height: MediaQuery.of(context).size.height,
              width: .5,
              color: CommonColors.primaryLightGrey7),
          index == 0
              ? const Categories()
              : index == 1
                  ? const Price()
                  : index == 2
                      ? const Brand()
                      : const SizedBox(),
        ],
      ),
    );
  }
}
