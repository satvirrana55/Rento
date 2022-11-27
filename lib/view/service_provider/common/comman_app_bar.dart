import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/utility_funtions.dart/navigator_helper.dart';
import 'package:rento/utility_funtions.dart/ts.dart';

class CommonAppBar extends StatefulWidget {
  final String tittle;
  final value;
  final Color? color;
  final Widget? navigator;
  final double? elevation;
  final Color? backColor;

  const CommonAppBar(
      {Key? key,
      required this.tittle,
      this.value,
      this.color,
      this.navigator,
      this.elevation,
      this.backColor})
      : super(key: key);

  @override
  State<CommonAppBar> createState() => _CommonAppBarState();
}

class _CommonAppBarState extends State<CommonAppBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100.sp,
        elevation: widget.elevation ?? 0,
        titleSpacing: -5,
        shadowColor: CommonColors.whiteColor,
        backgroundColor:
            Get.isDarkMode ? CommonColors.blackColor : CommonColors.whiteColor,
        title: Text(
          widget.tittle,
          style: Get.isDarkMode
              ? Ts.semiBold18(CommonColors.whiteColor)
              : Ts.semiBold18(CommonColors.blackColor),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Get.isDarkMode
                ? CommonColors.whiteColor
                : CommonColors.blackColor,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: <Widget>[
          if (widget.value != null)
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 5),
              child: TextButton(
                  onPressed: () {
                    Push.to(widget.navigator as Widget, context);
                  },
                  child: Text(
                    widget.value,
                    style: Ts.medium14(widget.color as Color),
                  )),
            ),
        ],
      ),
    );
  }
}
