import 'package:flutter/material.dart';
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
  Color defaultColor = Colors.black;
  Color defaultColorText = Colors.black;
  Color defaultColorText1 = Color.fromRGBO(201, 201, 201, 1);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(),
      child: ChoiceChip(
        backgroundColor:
            Get.isDarkMode ? CommonColors.darkBackgroundColor : Colors.white,
        selectedShadowColor: Colors.black,
        shape: StadiumBorder(
            side: BorderSide(
                color: Get.isDarkMode
                    ? CommonColors.primaryButtonColor
                    : defaultColor)),
        label: Text(
          widget.label,
          style: Get.isDarkMode
              ? Ts.medium14(defaultColorText1)
              : Ts.medium14(defaultColorText),
        ),
        selected: isselected,
        onSelected: (isSelected) {
          setState(() {
            isselected = isSelected;
            defaultColor = const Color(0xff29BF79);
            defaultColorText = Colors.white;
            defaultColorText1 = Colors.white;

            if (isselected == false) {
              defaultColorText = Colors.black;
              defaultColor = Colors.black;
              defaultColorText1 = Color.fromRGBO(201, 201, 201, 1);
            }
          });
        },
        selectedColor: const Color(0xff29BF79),
      ),
    );
  }
}
