import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/utility_funtions.dart/ts.dart';

class TextFieldForm extends StatelessWidget {
  final TextEditingController controller;
  final String textvalue;
  const TextFieldForm(
      {Key? key, required this.controller, required this.textvalue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: controller,
        keyboardType: TextInputType.multiline,
        maxLines: 6,
        style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 14),
        cursorColor: CommonColors.mainColor,
        decoration: InputDecoration(
          floatingLabelStyle: const TextStyle(color: Color(0xff29BF79)),
          alignLabelWithHint: true,
          label: Text(textvalue),
          labelStyle: Ts.medium14(CommonColors.primaryLightgrey3),
          border: const OutlineInputBorder(borderSide: BorderSide()),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: Color(0xff29BF79)),
            borderRadius: BorderRadius.circular(5),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                width: 1,
                color: Get.isDarkMode
                    ? Color.fromRGBO(104, 117, 111, 1)
                    : CommonColors.primaryLightGrey2),
            borderRadius: BorderRadius.circular(5),
          ),
        ));
  }
}
