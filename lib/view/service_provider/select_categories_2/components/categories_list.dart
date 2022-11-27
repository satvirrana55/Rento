import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/utility_funtions.dart/ts.dart';

class CategoriesList extends StatefulWidget {
  final String text;
  const CategoriesList({Key? key, required this.text}) : super(key: key);

  @override
  State<CategoriesList> createState() => _CategoriesListState();
}

class _CategoriesListState extends State<CategoriesList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 70.sp,
          color:
              Get.isDarkMode ? CommonColors.darkBackgroundColor : Colors.white,
          child: Padding(
            padding: EdgeInsets.only(left: 25.sp, right: 25.sp),
            child: Row(
              children: [
                Text(
                  widget.text,
                  style: Get.isDarkMode
                      ? Ts.medium14(CommonColors.whiteColor)
                      : Ts.medium14(Colors.black),
                ),
                const Spacer(
                  flex: 1,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 17.sp,
                  color: Get.isDarkMode
                      ? CommonColors.whiteColor
                      : const Color.fromRGBO(23, 32, 38, 1),
                )
              ],
            ),
          ),
        ),
        const Divider(
          height: 1,
          color: CommonColors.primaryLightGrey2,
        )
      ],
    );
  }
}
