import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/utility_funtions.dart/size.dart';
import 'package:rento/utility_funtions.dart/ts.dart';

class AddDashBoardCard extends StatefulWidget {
  final String image;
  final String title;

  const AddDashBoardCard({Key? key, required this.image, required this.title})
      : super(key: key);

  @override
  State<AddDashBoardCard> createState() => _AddDashBoardCardState();
}

class _AddDashBoardCardState extends State<AddDashBoardCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Get.isDarkMode
              ? CommonColors.lightDark1
              : CommonColors.whiteColor,
          border: Border.all(
            color: Get.isDarkMode
                ? CommonColors.lightDark1
                : CommonColors.whiteColor,
          ),
          borderRadius: BorderRadius.circular(10.sp)),
      width: MediaQuery.of(context).size.width * .44,
      height: 214.sp,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            widget.image,
          ),
          Hbox(40.sp),
          Text(
            widget.title,
            textAlign: TextAlign.center,
            style: Get.isDarkMode
                ? Ts.semiBold16(CommonColors.whiteColor)
                : Ts.semiBold16(CommonColors.blackColor),
          )
        ],
      ),
    );
  }
}
