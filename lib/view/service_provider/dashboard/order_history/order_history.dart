import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/utility_funtions.dart/navigator_helper.dart';
import 'package:rento/utility_funtions.dart/ts.dart';
import 'package:rento/view/service_provider/common/comman_app_bar.dart';
import 'package:rento/view/service_provider/dashboard/order_history/components/history_cancel_card.dart';
import 'package:rento/view/service_provider/dashboard/order_history/history_order_details/cancel_order_details.dart';
import 'package:rento/view/service_provider/dashboard/order_history/history_order_details/completed_order_details.dart';

import 'components/history_complete_card.dart';

class OrderHistory extends StatefulWidget {
  const OrderHistory({Key? key}) : super(key: key);

  @override
  State<OrderHistory> createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {
  Color defaultColor = Colors.black;
  var i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: CommonAppBar(
          tittle: "orderHistory".tr,
          color: Colors.transparent,
          elevation: Get.isDarkMode ? 0.5 : 0.0,
        ),
      ),
      backgroundColor: Get.isDarkMode
          ? CommonColors.darkBackgroundColor
          : CommonColors.primaryBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
        child: DefaultTabController(
          length: 2,
          child: Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Column(
              children: <Widget>[
                Container(
                  height: 48.sp,
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xff29BF79)),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(30))),
                  child: Center(
                    child: Stack(children: [
                      Container(
                        margin: const EdgeInsets.only(left: 2, right: 2),
                        height: 45.sp,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.transparent),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(30))),
                        child: TabBar(
                            unselectedLabelColor:
                                CommonColors.primaryLightgrey1,
                            labelColor: Colors.white,
                            labelStyle: Ts.medium14(CommonColors.whiteColor),
                            indicator: BoxDecoration(
                                color: const Color(0xff29BF79),
                                border:
                                    Border.all(color: const Color(0xff29BF79)),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(30))),
                            tabs: [
                              Text(
                                "completed".tr,
                              ),
                              Text("cancelled".tr),
                            ]),
                      )
                    ]),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: TabBarView(children: [
                    InkWell(
                        onTap: () {
                          Push.to(
                              const CompletedOrderHistorydetails(), context);
                        },
                        child: const OrderHistoryCompleted()),
                    InkWell(
                        onTap: () {
                          Push.to(const CancelOrderDetails(), context);
                        },
                        child: const OrderHistoryCancel()),
                  ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
