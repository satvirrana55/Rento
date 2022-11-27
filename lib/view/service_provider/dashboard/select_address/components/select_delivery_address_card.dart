import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/utility_funtions.dart/ts.dart';

class SelectDiliveryAddressCard extends StatefulWidget {
  final String title;
  final String address;
  const SelectDiliveryAddressCard(
      {Key? key, required this.title, required this.address})
      : super(key: key);

  @override
  State<SelectDiliveryAddressCard> createState() =>
      _SelectDiliveryAddressCardState();
}

class _SelectDiliveryAddressCardState extends State<SelectDiliveryAddressCard> {
  bool val = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 139.sp,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color:
            Get.isDarkMode ? CommonColors.lightDark1 : CommonColors.whiteColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Transform.scale(
                scale: 1.2,
                child: Checkbox(
                    side:
                        BorderSide(width: 1.sp, color: CommonColors.greyColor),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    value: val,
                    activeColor: CommonColors.primaryButtonColor,
                    onChanged: (value) {
                      setState(() {
                        val = value as bool;
                      });
                    }),
              ),
              Padding(
                padding: EdgeInsets.only(left: 0.sp),
                child: Text(
                  widget.title,
                  style: Ts.medium16(CommonColors.primaryTextColor),
                ),
              ),
            ],
          ),
          Divider(
              color: Get.isDarkMode
                  ? const Color.fromRGBO(80, 80, 80, 1)
                  : CommonColors.greyColor),
          Padding(
            padding: EdgeInsets.only(left: 58.sp, right: 58.sp),
            child: Text(
              widget.address,
              style: Get.isDarkMode
                  ? Ts.medium13(const Color.fromRGBO(189, 191, 194, 1))
                  : Ts.medium13(CommonColors.blackColor),
            ),
          ),
        ],
      ),
    );
  }
}
