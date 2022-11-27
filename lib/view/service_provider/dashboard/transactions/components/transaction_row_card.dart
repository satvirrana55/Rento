import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/utility_funtions.dart/ts.dart';

class TranscationRowCard extends StatefulWidget {
  const TranscationRowCard({Key? key}) : super(key: key);

  @override
  State<TranscationRowCard> createState() => _TranscationRowCardState();
}

class _TranscationRowCardState extends State<TranscationRowCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 112.sp,
      width: MediaQuery.of(context).size.width / 2.25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: CommonColors.primaryDarkGreen1,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 16.sp, top: 14.sp),
            child: Text(
              'totRec'.tr,
              style: Ts.medium12(CommonColors.primaryDarkGreen),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.sp, top: 4.sp),
            child: Text(
              '₹74.000.00',
              style: Ts.medium22(CommonColors.whiteColor),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.sp, top: 8.sp),
            child: Text(
              'lastUpdate'.tr,
              style: Ts.medium12(CommonColors.primaryDarkGreen),
            ),
          )
        ],
      ),
    );
  }
}
