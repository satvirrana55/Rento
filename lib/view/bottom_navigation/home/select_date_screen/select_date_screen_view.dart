import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';
import 'package:rento/components/buttons.dart';
import 'package:rento/components/images.dart';
import 'package:rento/controller/select_date/select_date_controller.dart';
import 'package:rento/themes/themes.dart';
import 'package:rento/utility_funtions.dart/size.dart';
import 'package:rento/utility_funtions.dart/ts.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../../../../helpers/common_colors.dart';

class SelectDateScreen extends StatefulWidget {
  const SelectDateScreen({Key? key}) : super(key: key);

  @override
  State<SelectDateScreen> createState() => _SelectDateScreenState();
}

class _SelectDateScreenState extends State<SelectDateScreen> {
  DateTime? startDate;
  DateTime? endDate;
  String _selectedDate = '';
  String _dateCount = '';
  String _range = '';
  String _rangeCount = '';
  final SelectDateController _selectDateController =
      Get.isRegistered<SelectDateController>()
          ? Get.find<SelectDateController>()
          : Get.put(SelectDateController());

  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    setState(() {
      if (args.value is PickerDateRange) {
        _range = '${DateFormat('dd/MM/yyyy').format(args.value.startDate)} -'
            ' ${DateFormat('dd/MM/yyyy').format(args.value.endDate ?? args.value.startDate)}';
        log("_range: $_range");
        if (args.value is DateTime) {
          _selectedDate = args.value.toString();
        } else if (args.value is List<DateTime>) {
          _dateCount = args.value.length.toString();
          log("_dateCount :- $_dateCount");
        } else {
          _rangeCount = args.value.length.toString();
          log("_rangeCount :- $_rangeCount");
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Get.put(ThemeProvider());

    return Scaffold(
      backgroundColor: CommonColors.mainColor,
      appBar: AppBar(
        titleSpacing: 0,
        backgroundColor: CommonColors.mainColor,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back,
            color: CommonColors.whiteColor,
          ),
        ),
        title: Text(
          'Booking',
          style: Ts.semiBold18(CommonColors.whiteColor),
        ),
        elevation: 0.4,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Hbox(24.5),
            Padding(
              padding: EdgeInsets.only(left: 24.sp),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.sp),
                    child: Image.asset(
                      Images.redcar,
                      height: 101.sp,
                      width: 101.sp,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Wbox(24),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'MZ ZS EV',
                        style: Ts.semiBold18(CommonColors.whiteColor),
                      ),
                      const Hbox(10),
                      Text(
                        '₹ 1000/Per ${"day".tr}',
                        style: Ts.regular14(
                            CommonColors.whiteColor.withOpacity(0.6)),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const Hbox(27),
            Container(
              height: 800.sp,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Get.isDarkMode
                      ? CommonColors.darkBackgroundColor
                      : CommonColors.whiteColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  )),
              child: Padding(
                padding: EdgeInsets.only(left: 20.sp, top: 28.sp, right: 20.sp),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "selectStartDate".tr,
                      style: Get.isDarkMode
                          ? Ts.semiBold16(
                              CommonColors.whiteColor,
                            )
                          : Ts.semiBold16(const Color(0xff4E5B55)),
                    ),
                    const Hbox(5),
                    SfDateRangePicker(
                      yearCellStyle: const DateRangePickerYearCellStyle(
                          textStyle: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontSize: 15,
                              color: Colors.black)),
                      monthViewSettings: DateRangePickerMonthViewSettings(
                          viewHeaderStyle: DateRangePickerViewHeaderStyle(
                              textStyle: Ts.regular13(Get.isDarkMode
                                  ? CommonColors.whiteColor
                                  : Colors.black))),
                      monthCellStyle: DateRangePickerMonthCellStyle(
                          trailingDatesTextStyle: Ts.regular13(Get.isDarkMode
                              ? CommonColors.whiteColor
                              : Colors.black),
                          leadingDatesTextStyle: Ts.regular13(Get.isDarkMode
                              ? CommonColors.whiteColor
                              : Colors.black),
                          textStyle: Ts.regular13(Get.isDarkMode
                              ? CommonColors.whiteColor
                              : Colors.black)),
                      rangeSelectionColor:
                          const Color.fromARGB(255, 59, 222, 146),
                      startRangeSelectionColor: CommonColors.mainColor,
                      endRangeSelectionColor: CommonColors.mainColor,
                      todayHighlightColor: CommonColors.mainColor,
                      selectionTextStyle: Ts.regular15(CommonColors.whiteColor),
                      rangeTextStyle: Ts.regular15(CommonColors.whiteColor),
                      headerHeight: 60.sp,
                      headerStyle: DateRangePickerHeaderStyle(
                          backgroundColor: Get.isDarkMode
                              ? CommonColors.darkBackgroundColor
                              : CommonColors.whiteColor,
                          textAlign: TextAlign.center,
                          textStyle: Ts.semiBold16(CommonColors.mainColor)),
                      backgroundColor: Get.isDarkMode
                          ? const Color.fromRGBO(65, 65, 65, 1)
                          : CommonColors.whiteColor,
                      onSelectionChanged: _onSelectionChanged,
                      selectionMode: DateRangePickerSelectionMode.range,
                      initialSelectedRange: PickerDateRange(
                          DateTime.now().subtract(const Duration(days: 4)),
                          DateTime.now().add(const Duration(days: 3))),
                    ),
                    const Hbox(10),
                    IntrinsicHeight(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Column(
                              children: [
                                Text(
                                  "totalDays".tr,
                                  style: Get.isDarkMode
                                      ? Ts.medium12(
                                          CommonColors.primaryDarkGrey4)
                                      : Ts.medium12(CommonColors.mainColor),
                                ),
                                const Hbox(6),
                                Text(
                                  '4 days',
                                  style: Get.isDarkMode
                                      ? Ts.semiBold20(CommonColors.whiteColor)
                                      : Ts.semiBold20(const Color(0xff4E5B55)),
                                ),
                              ],
                            ),
                          ),
                          const VerticalDivider(color: CommonColors.greyColor),
                          Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: Column(
                              children: [
                                Text(
                                  "totalPrice".tr,
                                  style: Get.isDarkMode
                                      ? Ts.medium12(
                                          CommonColors.primaryDarkGrey4)
                                      : Ts.medium12(CommonColors.mainColor),
                                ),
                                const Hbox(6),
                                Text(
                                  '₹4000',
                                  style: Get.isDarkMode
                                      ? Ts.semiBold20(CommonColors.whiteColor)
                                      : Ts.semiBold20(const Color(0xff4E5B55)),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Hbox(29),
                    Align(
                        alignment: Alignment.center,
                        child: Text(
                          '${"securityAmt".tr} : ₹10000/-',
                          style: Ts.medium12(const Color(0xff8E9592)),
                        )),
                    const Hbox(24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        BorderButton(
                          textName: "addtoCart".tr,
                          onPressed: () {},
                          width: 189.sp,
                        ),
                        BasicButton(
                          textName: "continueButton".tr,
                          onPressed: () {
                            _selectDateController.confirm();
                          },
                          width: 189.sp,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
