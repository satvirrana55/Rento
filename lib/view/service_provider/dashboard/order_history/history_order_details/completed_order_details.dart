import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/utility_funtions.dart/size.dart';
import 'package:rento/view/service_provider/dashboard/order_history/history_order_details/components/completed_order_history_details.dart';

import '../../../common/comman_app_bar.dart';

class CompletedOrderHistorydetails extends StatefulWidget {
  const CompletedOrderHistorydetails({Key? key}) : super(key: key);

  @override
  State<CompletedOrderHistorydetails> createState() =>
      _CompletedOrderHistorydetailsState();
}

class _CompletedOrderHistorydetailsState
    extends State<CompletedOrderHistorydetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.sp),
        child: CommonAppBar(
          tittle: 'MZ ZS EV',
          elevation: Get.isDarkMode ? 0.5 : 0.0,
        ),
      ),
      backgroundColor: Get.isDarkMode
          ? CommonColors.darkBackgroundColor
          : CommonColors.primaryBackgroundColor,
      body: Padding(
        padding: EdgeInsets.only(left: 20.sp, right: 20.sp, top: 15.sp),
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 1,
            itemBuilder: (context, index) {
              return Column(
                children: const [CompletedOrderDetailScreenCard(), Hbox(10)],
              );
            }),
      ),
    );
  }
}
