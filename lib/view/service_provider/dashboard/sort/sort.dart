import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/utility_funtions.dart/size.dart';
import 'package:rento/utility_funtions.dart/ts.dart';
import 'package:rento/view/service_provider/common/comman_app_bar.dart';

class Sort extends StatefulWidget {
  const Sort({Key? key}) : super(key: key);

  @override
  State<Sort> createState() => _SortState();
}

class _SortState extends State<Sort> {
  bool val = true;
  bool val1 = false;
  bool val2 = false;
  bool val3 = false;
  final TextEditingController min = TextEditingController();
  final TextEditingController max = TextEditingController();
  RangeValues rangeValues = const RangeValues(1, 40);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.isDarkMode
          ? CommonColors.darkBackgroundColor
          : CommonColors.whiteColor,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: CommonAppBar(
          elevation: 0.5,
          tittle: 'Sort by',
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20.sp, right: 20.sp, top: 20.sp),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 14),
              child: Row(
                children: [
                  Container(
                    color: Colors.white,
                    height: 17,
                    width: 17,
                    child: Checkbox(
                        side: BorderSide(
                            width: 1.sp, color: CommonColors.greyColor),
                        value: val,
                        activeColor: CommonColors.primaryButtonColor,
                        onChanged: (value) {
                          setState(() {
                            val = value as bool;
                          });
                        }),
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Popularity",
                    style: Get.isDarkMode
                        ? Ts.medium13(CommonColors.whiteColor)
                        : Ts.medium13(CommonColors.blackColor),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 14),
              child: Row(
                children: [
                  Container(
                    color: Colors.white,
                    height: 17,
                    width: 17,
                    child: Checkbox(
                        side: BorderSide(
                            width: 1.sp, color: CommonColors.greyColor),
                        value: val,
                        activeColor: CommonColors.primaryButtonColor,
                        onChanged: (value) {
                          setState(() {
                            val = value as bool;
                          });
                        }),
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Price - Low to High",
                    style: Get.isDarkMode
                        ? Ts.medium13(CommonColors.whiteColor)
                        : Ts.medium13(CommonColors.blackColor),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 14),
              child: Row(
                children: [
                  Container(
                    color: Colors.white,
                    height: 17,
                    width: 17,
                    child: Checkbox(
                        side: BorderSide(
                            width: 1.sp, color: CommonColors.greyColor),
                        value: val,
                        activeColor: CommonColors.primaryButtonColor,
                        onChanged: (value) {
                          setState(() {
                            val = value as bool;
                          });
                        }),
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Price - High to Low",
                    style: Get.isDarkMode
                        ? Ts.medium13(CommonColors.whiteColor)
                        : Ts.medium13(CommonColors.blackColor),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 14),
              child: Row(
                children: [
                  Container(
                    color: Colors.white,
                    height: 17,
                    width: 17,
                    child: Checkbox(
                        side: BorderSide(
                            width: 1.sp, color: CommonColors.greyColor),
                        value: val,
                        activeColor: CommonColors.primaryButtonColor,
                        onChanged: (value) {
                          setState(() {
                            val = value as bool;
                          });
                        }),
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Newest First",
                    style: Get.isDarkMode
                        ? Ts.medium13(CommonColors.whiteColor)
                        : Ts.medium13(CommonColors.blackColor),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: 18.sp, right: 20.sp, top: 39.sp),
                        child: Text(
                          'PRICE',
                          style: Get.isDarkMode
                              ? Ts.semiBold14(CommonColors.whiteColor)
                              : Ts.semiBold14(CommonColors.blackColor),
                        ),
                      ),
                      Hbox(25.sp),
                      RangeSlider(
                          activeColor: CommonColors.primaryButtonColor,
                          inactiveColor: CommonColors.greyColor,
                          values: rangeValues,
                          max: 100,
                          labels: RangeLabels(
                              rangeValues.start.round().toString(),
                              rangeValues.end.round().toString()),
                          onChanged: (RangeValues values) {
                            setState(() {
                              rangeValues = values;
                            });
                          }),
                      Hbox(24.sp),
                      Padding(
                        padding: const EdgeInsets.only(left: 17, right: 17),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Flexible(
                              child: SizedBox(
                                height: 40,
                                child: TextFormField(
                                    style: Ts.medium14(
                                        CommonColors.primaryLightGrey5),
                                    maxLines: 1,
                                    controller: min,
                                    onFieldSubmitted: (inputValue) {
                                      if (inputValue.length > 1) {
                                      } else {}
                                    },
                                    validator: (input) {
                                      if (input!.isNotEmpty) {
                                        return null;
                                      } else if (input.isNotEmpty) {
                                      } else {}
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                      contentPadding: const EdgeInsets.all(10),
                                      hintText: 'Mini',
                                      hintStyle: Ts.medium13(
                                          CommonColors.primaryLightGrey5),
                                      labelStyle:
                                          Ts.medium13(CommonColors.blueColor),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            width: .5,
                                            color:
                                                CommonColors.primaryTextColor),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: .5,
                                            color: context.isDarkMode
                                                ? CommonColors
                                                    .primaryButtonColor
                                                : CommonColors
                                                    .primaryDarkGrey1),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      focusColor: CommonColors.greyColor,
                                    )),
                              ),
                            ),
                            SizedBox(
                              width: 8.sp,
                            ),
                            Flexible(
                              child: SizedBox(
                                height: 40,
                                child: TextFormField(
                                    style: Ts.medium14(
                                        CommonColors.primaryLightGrey5),
                                    maxLines: 1,
                                    controller: max,
                                    onFieldSubmitted: (inputValue) {
                                      if (inputValue.length > 1) {
                                      } else {}
                                    },
                                    validator: (input) {
                                      if (input!.isNotEmpty) {
                                        return null;
                                      } else if (input.isNotEmpty) {
                                      } else {}
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                      contentPadding: const EdgeInsets.all(10),
                                      hintText: 'Max',
                                      hintStyle: Ts.medium13(
                                          CommonColors.primaryLightGrey5),
                                      labelStyle: Ts.medium13(
                                          CommonColors.primaryLightGrey5),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            width: .5,
                                            color:
                                                CommonColors.primaryTextColor),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: .5,
                                            color: context.isDarkMode
                                                ? CommonColors
                                                    .primaryButtonColor
                                                : CommonColors
                                                    .primaryDarkGrey1),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      focusColor: CommonColors.greyColor,
                                    )),
                              ),
                            )
                          ],
                        ),
                      ),
                      Hbox(24.sp),
                      Padding(
                        padding: const EdgeInsets.only(left: 18, right: 18),
                        child: SizedBox(
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
                            onPressed: () {},
                            child: Text("apply".tr,
                                style: Ts.medium16(CommonColors.whiteColor)),
                          ),
                        ),
                      ),
                    ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
