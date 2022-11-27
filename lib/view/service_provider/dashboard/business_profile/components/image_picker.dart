import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rento/components/images.dart';
import 'package:rento/helpers/common_colors.dart';

class BusinessImagePicker extends StatefulWidget {
  const BusinessImagePicker({Key? key}) : super(key: key);

  @override
  State<BusinessImagePicker> createState() => _BusinessImagePickerState();
}

class _BusinessImagePickerState extends State<BusinessImagePicker> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            height: 114.sp,
            width: 114.sp,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(200),
            ),
            child: Stack(children: [
              const CircleAvatar(
                radius: 100,
                backgroundColor: CommonColors.blackColor,
                backgroundImage: AssetImage(Images.person),
              ),
              Padding(
                padding: EdgeInsets.only(right: 0.sp, top: 10),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: CommonColors.primaryButtonColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.camera_alt_outlined,
                        color: CommonColors.whiteColor,
                      ),
                    ),
                  ),
                ),
              )
            ]),
          ),
        )
      ],
    );
  }
}
