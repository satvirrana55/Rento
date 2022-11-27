import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rento/components/order_status_badge.dart';
import 'package:rento/utility_funtions.dart/size.dart';
import 'package:rento/utility_funtions.dart/ts.dart';

import '../../../../helpers/common_colors.dart';
import '../../../service_provider/common/comman_app_bar.dart';

class PaymentHistoryScreenView extends StatefulWidget {
  const PaymentHistoryScreenView({Key? key}) : super(key: key);

  @override
  State<PaymentHistoryScreenView> createState() =>
      _PaymentHistoryScreenViewState();
}

class _PaymentHistoryScreenViewState extends State<PaymentHistoryScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Get.isDarkMode
            ? CommonColors.darkBackgroundColor
            : CommonColors.bgColor,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.sp),
          child: CommonAppBar(
            tittle: "paymentHistory".tr,
            color: Get.isDarkMode
                ? CommonColors.whiteColor
                : CommonColors.blackColor,
            backColor: Get.isDarkMode
                ? CommonColors.darkColor
                : CommonColors.whiteColor,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "overallPayment".tr,
                  style: Get.isDarkMode
                      ? Ts.semiBold13(CommonColors.whiteColor)
                      : Ts.semiBold13(const Color(0xff61666A)),
                ),
                const Hbox(12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 2.3,
                      height: 109.sp,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.sp),
                        color: CommonColors.mainColor,
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 16.sp, top: 14.sp),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "totalPaid".tr,
                              style: Ts.medium12(const Color(0xff42775F)),
                            ),
                            const Hbox(9),
                            Text(
                              '₹74,000.00',
                              style: Ts.medium26(CommonColors.whiteColor),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 2.3,
                      height: 109.sp,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.sp),
                        color: const Color(0xffEE784C),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 16.sp, top: 14.sp),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "totalRefund".tr,
                              style: Ts.medium12(const Color(0xff844905)),
                            ),
                            const Hbox(9),
                            Text(
                              '₹1,000.00',
                              style: Ts.medium26(CommonColors.whiteColor),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const Hbox(16),
                Text(
                  "recentPayments".tr,
                  style: Get.isDarkMode
                      ? Ts.semiBold13(CommonColors.whiteColor)
                      : Ts.semiBold13(const Color(0xff61666A)),
                ),
                const Hbox(24),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 1.6,
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 8,
                      itemBuilder: (ctx, i) {
                        return Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 14.sp),
                              child: Card(
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 0.0, vertical: 0.0),
                                color: Get.isDarkMode
                                    ? CommonColors.lightDark1
                                    : CommonColors.whiteColor,
                                elevation: 2,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.sp),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 21.sp, top: 15.sp, bottom: 15.sp),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '${"orderID".tr} : 4545648715444524',
                                        style: Get.isDarkMode
                                            ? Ts.medium10(
                                                CommonColors.whiteColor)
                                            : Ts.medium10(
                                                const Color(0xff999A9B)),
                                      ),
                                      const Hbox(3),
                                      Text(
                                        'MZ ZS EV',
                                        style: Get.isDarkMode
                                            ? Ts.medium10(
                                                CommonColors.greyDark3)
                                            : Ts.medium10(
                                                const Color(0xff575A5C)),
                                      ),
                                      const Hbox(3),
                                      Text(
                                        'By Royal cars',
                                        style: Ts.regular10(
                                            const Color(0xffA5A7AA)),
                                      ),
                                      const Hbox(3),
                                      Align(
                                          alignment: Alignment.bottomRight,
                                          child: Padding(
                                            padding:
                                                EdgeInsets.only(right: 15.sp),
                                            child: Text(
                                              '₹ 1500.00',
                                              style: Ts.semiBold12(
                                                CommonColors.mainColor,
                                              ),
                                            ),
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 20.sp,
                              right: 0.0,
                              child: OrderStatusBage(
                                color: const Color(0xff157DAC),
                                textName: "refunded".tr,
                              ),
                            )
                          ],
                        );
                      }),
                ),
              ],
            ),
          ),
        ));
  }
}
