import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/utility_funtions.dart/size.dart';
import 'package:rento/utility_funtions.dart/ts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class PeopleLeftColumnSeriesChart2 extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  PeopleLeftColumnSeriesChart2({Key? key}) : super(key: key);

  @override
  _PeopleLeftColumnSeriesChart2State createState() =>
      _PeopleLeftColumnSeriesChart2State();
}

class _PeopleLeftColumnSeriesChart2State
    extends State<PeopleLeftColumnSeriesChart2> {
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
                'peopleleft'.tr,
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
            Hbox(17.sp),
            Padding(
              padding: EdgeInsets.only(left: 0.sp, right: 30.sp),
              child: SfCartesianChart(
                  primaryYAxis: NumericAxis(
                    borderWidth: 0,
                    labelStyle: TextStyle(
                        color: Get.isDarkMode
                            ? const Color.fromRGBO(131, 146, 165, 1)
                            : CommonColors.blackColor),
                    minorTickLines: const MinorTickLines(size: 0),
                    axisLine: const AxisLine(width: 0),
                    majorGridLines: MajorGridLines(
                        width: 1,
                        dashArray: [5, 5],
                        color: Get.isDarkMode
                            ? CommonColors.greyColor1
                            : CommonColors.greyColor1),
                  ),
                  primaryXAxis: CategoryAxis(
                    isVisible: false,
                    majorGridLines: const MajorGridLines(width: 0),
                  ),
                  series: <ChartSeries<_ChartData, String>>[
                    ColumnSeries<_ChartData, String>(
                        dataSource: data,
                        width: 0.2,
                        xValueMapper: (_ChartData data, _) => data.x,
                        yValueMapper: (_ChartData data, _) => data.y,
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        color: CommonColors.primaryDarkRed1),
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
