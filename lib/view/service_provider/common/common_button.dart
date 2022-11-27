import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/utility_funtions.dart/navigator_helper.dart';
import 'package:rento/utility_funtions.dart/ts.dart';

class CommonButton extends StatefulWidget {
  final String tittle;
  final Widget navigator;
  final TextStyle? style;
  const CommonButton(
      {Key? key, required this.tittle, required this.navigator, this.style})
      : super(key: key);

  @override
  State<CommonButton> createState() => _CommonButtonState();
}

class _CommonButtonState extends State<CommonButton> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.transparent,
      elevation: 0,
      child: SizedBox(
        height: 59.sp,
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            shadowColor: Colors.transparent,
            side: const BorderSide(
              color: CommonColors.primaryButtonColor,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
            ),
            primary: CommonColors.primaryButtonColor,
          ),
          onPressed: () {
            Push.to(widget.navigator, context);
          },
          child: Text(widget.tittle,
              style: widget.style ?? Ts.medium18(CommonColors.whiteColor)),
        ),
      ),
    );
  }
}
