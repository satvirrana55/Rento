import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/utility_funtions.dart/size.dart';
import 'package:rento/utility_funtions.dart/ts.dart';
import 'package:rento/view/service_provider/dashboard/new_orders/new_order_detalis/components/new_order_details_card.dart';

import '../../../common/comman_app_bar.dart';

class NewOrderDetailsScreen extends StatefulWidget {
  const NewOrderDetailsScreen({Key? key}) : super(key: key);

  @override
  State<NewOrderDetailsScreen> createState() => _NewOrderDetailsScreenState();
}

class _NewOrderDetailsScreenState extends State<NewOrderDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.sp),
        child: const CommonAppBar(
          tittle: 'MZ ZS EV',
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
                children: const [NewOrderDetailScreen(), Hbox(21)],
              );
            }),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 0, right: 00),
        child: Container(
          height: 79.sp,
          width: double.infinity,
          color: Get.isDarkMode
              ? CommonColors.blackColor
              : CommonColors.whiteColor,
          child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 48.sp,
                  width: MediaQuery.of(context).size.width * .27,
                  decoration: BoxDecoration(
                    color: CommonColors.blueColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                    child: Text(
                      "call".tr,
                      style: Ts.semiBold14(CommonColors.whiteColor),
                    ),
                    onPressed: () {},
                  ),
                ),
                Container(
                  height: 48.sp,
                  width: MediaQuery.of(context).size.width * .27,
                  decoration: BoxDecoration(
                    color: CommonColors.primaryRed,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                    child: Text(
                      "cancel".tr,
                      style: Ts.semiBold14(CommonColors.whiteColor),
                    ),
                    onPressed: () {},
                  ),
                ),
                Container(
                  height: 48.sp,
                  width: MediaQuery.of(context).size.width * .27,
                  decoration: BoxDecoration(
                    color: CommonColors.primaryLightGreen,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                    child: Text(
                      "accept".tr,
                      style: Ts.semiBold14(CommonColors.whiteColor),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
