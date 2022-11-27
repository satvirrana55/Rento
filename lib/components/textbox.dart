import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rento/themes/themes.dart';
import 'package:rento/utility_funtions.dart/ts.dart';

import '../../../helpers/common_colors.dart';
import '../helpers/common_colors.dart';
import '../utility_funtions.dart/ts.dart';

class EntryTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? label;
  final String? image;
  final String? initialValue;
  final bool? readOnly;
  final TextInputType? keyboardType;
  final int? maxLength;
  final int? maxLines;
  final String? hint;
  final IconData? suffixIcon;
  final Function? onTap;
  final TextCapitalization? textCapitalization;
  final Function? onSuffixPressed;
  final Widget? prefix;
  final bool autofocus;
  final bool noBottomSpace;
  final EdgeInsets? scrollPadding;
  final List<TextInputFormatter>? inputFormatters;
  final bool obscureText;
  final String? validatorText;

  const EntryTextField(
      {Key? key,
      this.controller,
      this.label,
      this.image,
      this.initialValue,
      this.readOnly,
      this.keyboardType,
      this.maxLength,
      this.hint,
      this.suffixIcon,
      this.maxLines,
      this.autofocus = false,
      this.onTap,
      this.obscureText = false,
      this.textCapitalization,
      this.onSuffixPressed,
      this.prefix,
      this.scrollPadding,
      this.inputFormatters,
      this.noBottomSpace = false,
      this.validatorText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Get.put(ThemeProvider());

    return SizedBox(
      height: 70.sp,
      child: TextFormField(
        validator: (value) => value!.isEmpty ? validatorText : null,
        scrollPadding: scrollPadding ??
            EdgeInsets.only(
                top: 20, bottom: MediaQuery.of(context).size.height),
        style: Theme.of(context).textTheme.bodyText1!.copyWith(
            fontSize: 18,
            color: Get.isDarkMode
                ? CommonColors.whiteColor
                : CommonColors.blackColor),
        textCapitalization: textCapitalization ?? TextCapitalization.sentences,
        cursorColor: CommonColors.mainColor,
        autofocus: autofocus,
        obscureText: obscureText,
        inputFormatters: inputFormatters,
        onTap: onTap as void Function()?,
        controller: controller,
        readOnly: readOnly ?? false,
        keyboardType: keyboardType,
        minLines: 1,
        initialValue: initialValue,
        maxLength: maxLength,
        maxLines: maxLines ?? 1,
        decoration: InputDecoration(
          floatingLabelStyle: Ts.regular10(CommonColors.mainColor),
          labelText: label,
          labelStyle: Get.isDarkMode
              ? Ts.regular10(CommonColors.lightGrey2)
              : Ts.regular10(CommonColors.primaryLightgrey3),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: Color(0xff29BF79)),
            borderRadius: BorderRadius.circular(5),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                width: 1,
                color: Get.isDarkMode
                    ? CommonColors.primaryLightGreen2
                    : CommonColors.primaryLightGrey2),
            borderRadius: BorderRadius.circular(5),
          ),
          focusColor: CommonColors.primaryTextColor,
          prefixIcon: prefix,
          suffixIcon: IconButton(
            icon: Icon(
              suffixIcon,
              size: 25.0,
              color: CommonColors.primaryTextColor,
            ),
            onPressed: onSuffixPressed as void Function()?,
          ),
          counter: const Offstage(),
        ),
      ),
    );
  }
}

class UnderLineTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? label;
  final String? image;
  final String? initialValue;
  final bool? readOnly;
  final TextInputType? keyboardType;
  final int? maxLength;
  final int? maxLines;
  final String? hint;
  final IconData? suffixIcon;
  final Function? onTap;
  final TextCapitalization? textCapitalization;
  final Function? onSuffixPressed;
  final Widget? prefix;
  final bool autofocus;
  final bool noBottomSpace;
  final EdgeInsets? scrollPadding;
  final List<TextInputFormatter>? inputFormatters;
  final bool obscureText;
  final String? validatorText;

  const UnderLineTextField(
      {Key? key,
      this.controller,
      this.label,
      this.image,
      this.initialValue,
      this.readOnly,
      this.keyboardType,
      this.maxLength,
      this.hint,
      this.suffixIcon,
      this.maxLines,
      this.autofocus = false,
      this.onTap,
      this.obscureText = false,
      this.textCapitalization,
      this.onSuffixPressed,
      this.prefix,
      this.scrollPadding,
      this.inputFormatters,
      this.noBottomSpace = false,
      this.validatorText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70.sp,
      child: TextFormField(
        validator: (value) => value!.isEmpty ? validatorText : null,
        scrollPadding: scrollPadding ??
            EdgeInsets.only(
                top: 20, bottom: MediaQuery.of(context).size.height),
        style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 18),
        textCapitalization: textCapitalization ?? TextCapitalization.sentences,
        cursorColor: CommonColors.mainColor,
        autofocus: autofocus,
        obscureText: obscureText,
        inputFormatters: inputFormatters,
        onTap: onTap as void Function()?,
        controller: controller,
        readOnly: readOnly ?? false,
        keyboardType: keyboardType,
        minLines: 1,
        initialValue: initialValue,
        maxLength: maxLength,
        maxLines: maxLines ?? 1,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: Ts.medium14(CommonColors.greyColor),
          focusedBorder: UnderlineInputBorder(
            borderSide:
                BorderSide(color: CommonColors.greyColor.withOpacity(0.4)),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide:
                BorderSide(color: CommonColors.greyColor.withOpacity(0.4)),
          ),
          focusColor: CommonColors.mainColor,
          prefixIcon: prefix,
          suffixIcon: IconButton(
            icon: Icon(
              suffixIcon,
              size: 25.0,
              color: CommonColors.mainColor,
            ),
            onPressed: onSuffixPressed as void Function()?,
          ),
          counter: const Offstage(),
        ),
      ),
    );
  }
}
