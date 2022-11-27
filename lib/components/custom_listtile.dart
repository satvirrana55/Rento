import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:rento/utility_funtions.dart/ts.dart';

import '../helpers/common_colors.dart';

class CustomListTile extends StatelessWidget {
  final VoidCallback? onPressed;
  final String? textName;
  final SvgPicture? image;

  const CustomListTile({
    Key? key,
    this.textName,
    this.onPressed,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPressed,
      leading: Padding(
        padding: EdgeInsets.only(left: 15.sp),
        child: image,
      ),
      title: Text(textName ?? "",
          style: Get.isDarkMode
              ? Ts.semiBold14(CommonColors.whiteColor)
              : Ts.semiBold14(const Color(0xff61666A))),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        size: 15,
        color: Color(0xffAAAAAA),
      ),
    );
  }
}
