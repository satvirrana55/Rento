import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/utility_funtions.dart/ts.dart';

class ChipWidget extends StatefulWidget {
  final String label;
  const ChipWidget({
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  State<ChipWidget> createState() => _ChipWidgetState();
}

class _ChipWidgetState extends State<ChipWidget> {
  bool isselected = false;
  Color defaultColor = const Color(0xff707070);
  Color defaultColorText = const Color(0xff707070);
  Color defaultColorText1 = const Color.fromRGBO(112, 112, 112, 1);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 7.sp),
      child: ChoiceChip(
        backgroundColor:
            Get.isDarkMode ? CommonColors.blackColor : Colors.white,
        selectedShadowColor: Colors.black,
        shape: StadiumBorder(side: BorderSide(color: defaultColor)),
        label: Text(
          widget.label,
          style: Get.isDarkMode
              ? Ts.regular14(defaultColorText1)
              : Ts.regular14(defaultColorText),
        ),
        selected: isselected,
        onSelected: (isSelected) {
          setState(() {
            isselected = isSelected;
            defaultColor = const Color(0xff29BF79);
            defaultColorText = Colors.white;
            defaultColorText1 = Colors.white;
            if (isselected == false) {
              defaultColorText = const Color(0xff707070);
              defaultColor = const Color(0xff707070);
              defaultColorText1 = const Color.fromRGBO(112, 112, 112, 1);
            }
          });
        },
        selectedColor: const Color(0xff29BF79),
      ),
    );
  }
}
