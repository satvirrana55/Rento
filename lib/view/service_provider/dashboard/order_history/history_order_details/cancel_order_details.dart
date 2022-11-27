import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/utility_funtions.dart/size.dart';
import 'package:rento/view/service_provider/dashboard/order_history/history_order_details/components/cancel_oder_history_details.dart';

import '../../../common/comman_app_bar.dart';

class CancelOrderDetails extends StatefulWidget {
  const CancelOrderDetails({Key? key}) : super(key: key);

  @override
  State<CancelOrderDetails> createState() => _CancelOrderDetailsState();
}

class _CancelOrderDetailsState extends State<CancelOrderDetails> {
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
                  children: const [CancelOrderDetailScreenCard(), Hbox(10)],
                );
              }),
        ));
  }
}
