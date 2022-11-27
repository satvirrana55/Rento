import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/utility_funtions.dart/size.dart';

import '../../common/comman_app_bar.dart';
import 'components/column_series_chart.dart';
import 'components/column_series_chart_2.dart';
import 'components/stacked_line_chart.dart';

class Revenue extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  Revenue({Key? key}) : super(key: key);

  @override
  _RevenueState createState() => _RevenueState();
}

class _RevenueState extends State<Revenue> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: CommonAppBar(
            tittle: "revenue".tr,
            elevation: 0.5,
          ),
        ),
        backgroundColor: Get.isDarkMode
            ? CommonColors.darkBackgroundColor
            : CommonColors.primaryBackgroundColor,
        body: SingleChildScrollView(
          child: Column(children: [
            StackedLineChart(),
            Hbox(13.sp),
            ColumnSeriesChart(),
            Hbox(13.sp),
            PeopleLeftColumnSeriesChart2()
          ]),
        ));
  }
}
