import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rento/components/images.dart';
import 'package:rento/utility_funtions.dart/size.dart';

import '../../../../components/order_status_badge.dart';
import '../../../../helpers/common_colors.dart';
import '../../../../utility_funtions.dart/ts.dart';
import '../../../service_provider/common/comman_app_bar.dart';

class CancelOrderScreen extends StatefulWidget {
  const CancelOrderScreen({Key? key}) : super(key: key);

  @override
  State<CancelOrderScreen> createState() => _CancelOrderScreenState();
}

class _CancelOrderScreenState extends State<CancelOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.isDarkMode
          ? CommonColors.darkBackgroundColor
          : const Color(0xffF3F3F3),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.sp),
        child: CommonAppBar(
          tittle: "cancellation".tr,
          color: Colors.transparent,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 14.sp, bottom: 14.sp),
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: 3,
            itemBuilder: (ctx, i) {
              return Padding(
                padding: EdgeInsets.only(
                    left: 20.sp, right: 20.sp, top: 10.sp, bottom: 10.sp),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.sp),
                        color: Get.isDarkMode
                            ? CommonColors.lightDark1
                            : CommonColors.whiteColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(20.sp),
                              child: Image.asset(
                                Images.redcar,
                                height: 158.sp,
                                width: 122.sp,
                                fit: BoxFit.cover,
                              )),
                          const Wbox(11),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Hbox(6),
                              Text(
                                'MZ ZS EV',
                                style: Ts.semiBold14(CommonColors.mainColor),
                              ),
                              const Hbox(2),
                              Text(
                                'By Royal cars',
                                style: Get.isDarkMode
                                    ? Ts.regular10(CommonColors.greyDark1)
                                    : Ts.regular10(const Color(0xffA5A7AA)),
                              ),
                              const Hbox(3),
                              Text(
                                '${"startDate".tr} : 10 Mar 2022',
                                style: Get.isDarkMode
                                    ? Ts.medium12(CommonColors.whiteColor)
                                    : Ts.medium12(const Color(0xff61666A)),
                              ),
                              const Hbox(4),
                              Text(
                                '${"endDate".tr} : 12 Mar 2022',
                                style: Get.isDarkMode
                                    ? Ts.medium12(CommonColors.whiteColor)
                                    : Ts.medium12(const Color(0xff61666A)),
                              ),
                              const Hbox(4),
                              Text(
                                '₹ 1000/Per ${"day".tr}',
                                style: Get.isDarkMode
                                    ? Ts.regular10(CommonColors.whiteColor)
                                    : Ts.regular10(const Color(0xff61666A)),
                              ),
                              const Hbox(6),
                              Row(
                                children: [
                                  Text(
                                    '₹ 4000',
                                    style:
                                        Ts.semiBold12(CommonColors.mainColor),
                                  ),
                                  const Wbox(6),
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(5.sp),
                                        color: Get.isDarkMode
                                            ? const Color.fromRGBO(
                                                239, 255, 247, 1)
                                            : const Color(0xffC4FFE3)),
                                    child: Text(
                                      "refunded".tr,
                                      style:
                                          Ts.medium10(CommonColors.mainColor),
                                    ),
                                  ),
                                ],
                              ),
                              const Hbox(5),
                              Text(
                                '${"orderID".tr} : 451654165415152515',
                                style: Get.isDarkMode
                                    ? Ts.regular10(CommonColors.greyDark1)
                                    : Ts.regular10(const Color(0xffA5A7AA)),
                              ),
                              const Hbox(13),
                            ],
                          ),
                        ]),
                      ),
                    ),
                    Positioned(
                      top: 20.sp,
                      //left: 200.sp,
                      right: 0.0,
                      child: OrderStatusBage(
                        textName: "cancelled".tr,
                        color: Get.isDarkMode
                            ? Color.fromRGBO(255, 43, 0, 1)
                            : CommonColors.redColor,
                      ),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
