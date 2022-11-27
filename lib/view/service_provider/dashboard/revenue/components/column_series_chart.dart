import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/utility_funtions.dart/size.dart';
import 'package:rento/utility_funtions.dart/ts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ColumnSeriesChart extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  ColumnSeriesChart({Key? key}) : super(key: key);

  @override
  _ColumnSeriesChartState createState() => _ColumnSeriesChartState();
}

class _ColumnSeriesChartState extends State<ColumnSeriesChart> {
  late List<_ChartData> data;
  late TooltipBehavior _tooltip;

  @override
  void initState() {
    data = [
      _ChartData('CHN', 89, 67),
      _ChartData('Mar', 34, 45),
      _ChartData('MHG', 34, 45),
      _ChartData('Apr', 32, 65),
      _ChartData('May', 40, 59),
      _ChartData('MH', 90, 60)
    ];
    _tooltip = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Get.isDarkMode ? CommonColors.lightDark1 : CommonColors.whiteColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 30.sp, right: 30.sp, top: 23.sp),
              child: Text(
                'newuser'.tr,
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
            Hbox(10.sp),
            Padding(
              padding: EdgeInsets.only(left: 30.sp, right: 30.sp),
              child: Divider(
                  color: Get.isDarkMode
                      ? CommonColors.whiteColor
                      : CommonColors.greyColor1),
            ),
            Hbox(20.sp),
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
                    "newUser".tr,
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
                  Text("repeatUsers".tr,
                      style: Get.isDarkMode
                          ? Ts.medium11(CommonColors.whiteColor)
                          : Ts.medium11(CommonColors.blackColor)),
                ],
              ),
            ),
            Hbox(17.sp),
            Padding(
              padding: EdgeInsets.only(left: 0.sp, right: 30.sp),
              child: SfCartesianChart(
                  primaryYAxis: NumericAxis(
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
                    axisLine: const AxisLine(width: 0, color: Colors.white),
                    borderColor: Colors.transparent,
                  ),
                  primaryXAxis: CategoryAxis(
                    labelStyle: TextStyle(
                        color: Get.isDarkMode
                            ? const Color.fromRGBO(131, 146, 165, 1)
                            : CommonColors.blackColor),
                    isVisible: false,
                    majorGridLines:
                        const MajorGridLines(width: 0, dashArray: [1, 1]),
                  ),
                  series: <ChartSeries<_ChartData, String>>[
                    ColumnSeries<_ChartData, String>(
                        spacing: 0.3,
                        dataSource: data,
                        width: 0.6,
                        xValueMapper: (_ChartData data, _) => data.x,
                        yValueMapper: (_ChartData data, _) => data.y,
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        color: CommonColors.primaryLightGreen3),
                    ColumnSeries<_ChartData, String>(
                        dataSource: data,
                        spacing: 0.3,
                        width: 0.6,
                        xValueMapper: (_ChartData data, _) => data.x,
                        yValueMapper: (_ChartData data, _) => data.z,
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        color: CommonColors.primaryDarkBlue3)
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}

class _ChartData {
  _ChartData(this.x, this.y, this.z);

  final String x;
  final double y;
  final double z;
}
