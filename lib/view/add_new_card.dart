import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rento/components/buttons.dart';
import 'package:rento/components/textbox.dart';
import 'package:rento/utility_funtions.dart/size.dart';
import 'package:rento/utility_funtions.dart/ts.dart';
import 'package:rento/view/service_provider/common/comman_app_bar.dart';

import '../helpers/common_colors.dart';

class AddNewCard extends StatefulWidget {
  const AddNewCard({Key? key}) : super(key: key);

  @override
  State<AddNewCard> createState() => _AddNewCardState();
}

class _AddNewCardState extends State<AddNewCard> {
  String? currentMonth = "month".tr;
  String? currentyear = "year".tr;

  List<String> month = [
    "month".tr,
    "Jan",
    "Feb",
    "Mar",
    "Apr",
    "May",
    "Jun",
    "Jul",
    "Aug",
    "Sep",
    "Oct",
    "Nov",
    "Dec"
  ];

  List<String> year = [
    "year".tr,
    "2022",
    "2023",
    "2024",
    "2025",
    "2026",
    "2027",
    "2028",
    "2029",
    "2030",
    "2031",
    "2032"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.isDarkMode
          ? CommonColors.darkBackgroundColor
          : const Color(0xffF3F3F3),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.sp),
        child: CommonAppBar(
          tittle: "addCard".tr,
          color: Colors.transparent,
          elevation: Get.isDarkMode ? 0.5 : 0,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.sp),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Get.isDarkMode
                  ? CommonColors.lightDark1
                  : CommonColors.whiteColor),
          height: 328.sp,
          child: Padding(
            padding: EdgeInsets.only(
                left: 18.sp, right: 18.sp, top: 24.sp, bottom: 24.sp),
            child: Column(
              children: [
                UnderLineTextField(
                  label: "cardNo".tr,
                ),
                UnderLineTextField(
                  label: 'cardname'.tr,
                ),
                const Hbox(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 160.sp,
                      child: Column(
                        children: [
                          DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              isExpanded: true,
                              icon: const Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: CommonColors.greyColor,
                              ),
                              iconEnabledColor: CommonColors.mainColor,
                              value: currentMonth,
                              isDense: true,
                              onChanged: (newValue) {
                                setState(() {
                                  currentMonth = newValue;
                                });
                              },
                              items: month.map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(
                                    value,
                                    style: Get.isDarkMode
                                        ? Ts.medium14(CommonColors.greyDark2)
                                        : Ts.medium14(CommonColors.greyColor),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                          const Hbox(5),
                          const Divider(
                            color: CommonColors.greyColor,
                          )
                        ],
                      ),
                    ),
                    //Wbox(10),
                    SizedBox(
                      width: 160.sp,
                      child: Column(
                        children: [
                          DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              isExpanded: true,
                              icon: const Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: CommonColors.greyColor,
                              ),
                              value: currentyear,
                              isDense: true,
                              onChanged: (newValue) {
                                setState(() {
                                  currentyear = newValue;
                                });
                              },
                              items: year.map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(
                                    value,
                                    style: Get.isDarkMode
                                        ? Ts.medium14(CommonColors.greyDark2)
                                        : Ts.medium14(CommonColors.greyColor),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                          const Hbox(5),
                          const Divider(
                            color: CommonColors.greyColor,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const Hbox(15),
                BasicButton(
                  textName: "save".tr,
                  width: double.infinity,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
