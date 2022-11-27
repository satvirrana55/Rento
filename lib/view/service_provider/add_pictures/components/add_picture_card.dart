import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rento/components/images.dart';
import 'package:rento/helpers/common_colors.dart';

class AddPicturesCard extends StatefulWidget {
  const AddPicturesCard({Key? key}) : super(key: key);

  @override
  State<AddPicturesCard> createState() => _AddPicturesCardState();
}

class _AddPicturesCardState extends State<AddPicturesCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Get.isDarkMode
              ? CommonColors.lightDark1
              : const Color.fromRGBO(255, 255, 255, 1),
          border: Border.all(
            color: Get.isDarkMode
                ? CommonColors.lightDark1
                : const Color.fromRGBO(255, 255, 255, 1),
          )),
      width: MediaQuery.of(context).size.width / 2.2,
      height: 190.sp,
      child: Image.asset(
        Images.imageIcon,
        height: 50.sp,
        width: 50.sp,
      ),
    );
  }
}
