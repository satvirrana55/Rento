import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/utility_funtions.dart/ts.dart';
import 'package:rento/view/service_provider/dashboard/components/status_bage.dart';

class TransacationRecivedCard extends StatefulWidget {
  const TransacationRecivedCard({Key? key}) : super(key: key);

  @override
  State<TransacationRecivedCard> createState() =>
      _TransacationRecivedCardState();
}

class _TransacationRecivedCardState extends State<TransacationRecivedCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 107.sp,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color:
            Get.isDarkMode ? CommonColors.lightDark1 : CommonColors.whiteColor,
      ),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 12.sp),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 21.sp, top: 15.sp),
                      child: Text('${"orderID".tr} : 45414156464514231',
                          style: Get.isDarkMode
                              ? Ts.medium10(
                                  const Color.fromRGBO(153, 154, 155, 1))
                              : Ts.medium10(const Color(0xff8497A2))),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 21.sp, top: 4.sp),
                      child: Text('MZ ZS EV',
                          style: Get.isDarkMode
                              ? Ts.semiBold13(CommonColors.whiteColor)
                              : Ts.semiBold13(CommonColors.blackColor)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 21.sp, top: 5.sp),
                      child: Text('Akash Sharma',
                          style: Get.isDarkMode
                              ? Ts.regular10(CommonColors.greyDark1)
                              : Ts.regular10(const Color(0xff8497A2))),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 21.sp, top: 6.sp),
                      child: Text('bydc'.tr,
                          style: Get.isDarkMode
                              ? Ts.regular10(CommonColors.whiteColor)
                              : Ts.regular10(CommonColors.blackColor)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: 15.sp,
            right: 0.0,
            child: StatusBage(
              textName: "received".tr,
              color: CommonColors.primaryTextColor,
            ),
          ),
          Positioned(
            top: 80.sp,
            right: 12.0.sp,
            child: Text('₹ 1500.00',
                style: Get.isDarkMode
                    ? Ts.medium10(CommonColors.whiteColor)
                    : Ts.medium10(CommonColors.blackColor)),
          ),
        ],
      ),
    );
  }
}
