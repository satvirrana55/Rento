import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/utility_funtions.dart/size.dart';
import 'package:rento/utility_funtions.dart/ts.dart';

class Price extends StatefulWidget {
  const Price({Key? key}) : super(key: key);

  @override
  State<Price> createState() => _PriceState();
}

class _PriceState extends State<Price> {
  final TextEditingController min = TextEditingController();

  final TextEditingController max = TextEditingController();

  RangeValues rangeValues = const RangeValues(1, 40);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: EdgeInsets.only(left: 25.sp, right: 20.sp, top: 17.sp),
            child: Text(
              "selectPrice".tr,
              style: Get.isDarkMode
                  ? Ts.semiBold16(CommonColors.whiteColor)
                  : Ts.semiBold14(CommonColors.blackColor),
            ),
          ),
          Hbox(25.sp),
          RangeSlider(
              activeColor: CommonColors.primaryButtonColor,
              inactiveColor: CommonColors.greyColor,
              values: rangeValues,
              max: 100,
              labels: RangeLabels(rangeValues.start.round().toString(),
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
                    height: 39,
                    child: TextFormField(
                        style: Ts.medium14(CommonColors.blackColor),
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
                          hintText: "min".tr,
                          hintStyle:
                              Ts.medium13(CommonColors.primaryLightGrey5),
                          labelStyle:
                              Ts.medium13(CommonColors.primaryLightGrey5),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: .5,
                                color: CommonColors.primaryDarkGreen1),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: .5,
                                color: context.isDarkMode
                                    ? CommonColors.primaryButtonColor
                                    : CommonColors.primaryLightdark1),
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
                    height: 39,
                    child: TextFormField(
                        style: Ts.medium14(CommonColors.blackColor),
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
                          hintText: "max".tr,
                          hintStyle:
                              Ts.medium13(CommonColors.primaryLightGrey5),
                          labelStyle:
                              Ts.medium13(CommonColors.primaryLightGrey5),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: .5,
                                color: CommonColors.primaryTextColor),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: .5,
                                color: context.isDarkMode
                                    ? CommonColors.primaryDarkGreen1
                                    : CommonColors.primaryLightdark1),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          focusColor: CommonColors.greyColor,
                        )),
                  ),
                )
              ],
            ),
          ),
          Hbox(41.sp),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "clearall".tr,
                  style: Get.isDarkMode
                      ? Ts.medium13(CommonColors.primaryTextColor)
                      : Ts.medium13(CommonColors.blackColor),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
