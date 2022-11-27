import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/utility_funtions.dart/size.dart';
import 'package:rento/utility_funtions.dart/ts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class StackedLineChart extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  StackedLineChart({Key? key}) : super(key: key);

  @override
  _StackedLineChartState createState() => _StackedLineChartState();
}

class _StackedLineChartState extends State<StackedLineChart> {
  final List<SalesData> chartData = [
    SalesData('Mon', 35, 40),
    SalesData('Tue', 28, 50),
    SalesData('Wed', 34, 45),
    SalesData('Thu', 32, 65),
    SalesData('Fri', 40, 76),
    SalesData('Sat', 49, 70),
    SalesData('Sun', 40, 67)
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Get.isDarkMode ? CommonColors.lightDark1 : CommonColors.whiteColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 30.sp, right: 30.sp, top: 17.sp),
            child: Text(
              'avgtime'.tr,
              style: Get.isDarkMode
                  ? Ts.bold16(CommonColors.whiteColor)
                  : Ts.bold16(CommonColors.blackColor),
            ),
          ),
          Hbox(4.sp),
          Padding(
            padding: EdgeInsets.only(left: 30.sp, right: 30.sp),
            child: Text('Lorem ipsum dolor sit amet, consetetur sadipscing',
                style: Get.isDarkMode
                    ? Ts.medium10(const Color.fromRGBO(193, 202, 214, 1))
                    : Ts.medium10(CommonColors.primarylightBlueGrey2)),
          ),
          Hbox(16.sp),
          Padding(
            padding: EdgeInsets.only(left: 30.sp, right: 30.sp),
            child: Divider(
                color: Get.isDarkMode
                    ? CommonColors.whiteColor
                    : CommonColors.greyColor),
          ),
          Hbox(16.sp),
          Padding(
            padding: EdgeInsets.only(left: 30.sp, right: 30.sp),
            child: Row(
              children: [
                Container(
                  height: 12.sp,
                  width: 11.sp,
                  color: CommonColors.primaryLightGreen3,
                ),
                SizedBox(
                  width: 5.sp,
                ),
                Text(
                  "averageTime".tr,
                  style: Get.isDarkMode
                      ? Ts.medium11(CommonColors.whiteColor)
                      : Ts.medium11(CommonColors.blackColor),
                ),
                SizedBox(
                  width: 16.sp,
                ),
                Container(
                  height: 12.sp,
                  width: 11.sp,
                  color: CommonColors.primaryDarkBlue3,
                ),
                SizedBox(
                  width: 5.sp,
                ),
                Text("completedTime".tr,
                    style: Get.isDarkMode
                        ? Ts.medium11(CommonColors.whiteColor)
                        : Ts.medium11(CommonColors.blackColor)),
              ],
            ),
          ),
          Hbox(16.sp),
          Padding(
            padding: EdgeInsets.only(
              left: 0.sp,
              right: 30.sp,
            ),
            child: SfCartesianChart(
                primaryXAxis: CategoryAxis(
                  majorGridLines:
                      const MajorGridLines(width: 0, dashArray: [1, 1]),
                  crossesAt: 0,
                  axisLine: AxisLine(
                      dashArray: [5, 5],
                      color: Get.isDarkMode
                          ? CommonColors.greyDark1
                          : CommonColors.greyDark1),
                  labelStyle: TextStyle(
                      color: Get.isDarkMode
                          ? const Color.fromRGBO(131, 146, 165, 1)
                          : CommonColors.blackColor),
                ),
                primaryYAxis: NumericAxis(
                  axisLine: AxisLine(
                      /* color: Get.isDarkMode
                          ? CommonColors.lightDark1
                          : CommonColors.whiteColor), */
                      ),
                  labelStyle: TextStyle(
                      color: Get.isDarkMode
                          ? const Color.fromRGBO(131, 146, 165, 1)
                          : CommonColors.blackColor),
                  majorGridLines: MajorGridLines(
                      width: 1,
                      dashArray: [5, 5],
                      color: Get.isDarkMode
                          ? CommonColors.greyColor1
                          : CommonColors.greyColor1),
                  title: AxisTitle(
                      text: "timeInMin".tr,
                      textStyle: Get.isDarkMode
                          ? Ts.medium11(CommonColors.whiteColor)
                          : Ts.medium11(CommonColors.blackColor)),
                ),
                series: <LineSeries<SalesData, String>>[
                  LineSeries<SalesData, String>(
                      dataSource: chartData,
                      color: CommonColors.primaryOrange,
                      markerSettings: MarkerSettings(
                          borderColor: Get.isDarkMode
                              ? CommonColors.whiteColor
                              : CommonColors.primaryOrange,
                          isVisible: true,
                          color: CommonColors.primaryOrange),
                      xValueMapper: (SalesData sales, _) => sales.year,
                      yValueMapper: (SalesData sales, _) => sales.sales),
                  LineSeries<SalesData, String>(
                      dataSource: chartData,
                      color: CommonColors.primaryDarkBlue3,
                      markerSettings: MarkerSettings(
                        borderColor: Get.isDarkMode
                            ? CommonColors.whiteColor
                            : CommonColors.primaryDarkBlue3,
                        isVisible: true,
                        color: CommonColors.primaryDarkBlue3,
                      ),
                      xValueMapper: (SalesData sales, _) => sales.year,
                      yValueMapper: (SalesData sales, _) => sales.sales2)
                ]),
          ),
        ],
      ),
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales, this.sales2);
  final String year;
  final double sales;
  final double sales2;
}
