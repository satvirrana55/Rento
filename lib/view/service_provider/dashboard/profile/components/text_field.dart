// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/utility_funtions.dart/ts.dart';

class ProfileInputTextField extends StatefulWidget {
  final String? title;
  final TextEditingController? textEditingController;
  final String? validatorString;
  final String? number;
  final Icon? sufixIcon;
  final String? label;

  const ProfileInputTextField(
      {this.title,
      this.textEditingController,
      this.validatorString,
      this.number,
      this.sufixIcon,
      this.label});

  @override
  _ProfileInputTextFieldState createState() => _ProfileInputTextFieldState();
}

class _ProfileInputTextFieldState extends State<ProfileInputTextField> {
  bool isFilled = true;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(0),
        child: TextFormField(
            style: Get.isDarkMode
                ? Ts.medium14(CommonColors.whiteColor)
                : Ts.medium14(const Color(0xff61666A)),
            maxLines: 1,
            controller: widget.textEditingController,
            onFieldSubmitted: (inputValue) {
              if (inputValue.length > 1) {
                setValidator(true);
              } else {
                setValidator(false);
              }
            },
            validator: (input) {
              if (input!.isNotEmpty && input.isValidStrnig) {
                return null;
              } else if (input.isNotEmpty && !input.isValidStrnig) {
              } else {
                return widget.validatorString;
              }
              return null;
            },
            decoration: InputDecoration(
                labelText: widget.label,
                hintText: widget.title,
                labelStyle: Ts.regular10(CommonColors.primaryTextColor),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      width: 1, color: CommonColors.primaryTextColor),
                  borderRadius: BorderRadius.circular(5),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 1,
                      color: CommonColors.primaryDarkGrey1.withOpacity(0.2)),
                  borderRadius: BorderRadius.circular(5),
                ),
                focusColor: CommonColors.greyColor,
                suffixIcon: widget.textEditingController!.text.isEmpty
                    ? const SizedBox()
                    : widget.textEditingController!.text.isNotEmpty &&
                            widget.label == "Select Service Area"
                        ? CircleAvatar(
                            backgroundColor: Colors.transparent,
                            child: TextButton(
                                onPressed: () {},
                                child: Text("edit".tr,
                                    style: Ts.medium14(
                                        CommonColors.primaryDarkBlue))),
                          )
                        : const CircleAvatar(
                            backgroundColor: Colors.transparent,
                          ))));
  }

  _showDialog(title, text) {
    showDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: Text("$title"),
            content: Text(
              text,
              style: const TextStyle(fontSize: 13, color: Colors.grey),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context, 'OK'),
                child: Text("ok".tr),
              ),
            ],
          );
        });
  }

  void setValidator(valid) {
    setState(() {
      isFilled = valid;
    });
  }
}

extension extString on String {
  bool get isValidEmail {
    final emailRegExp = RegExp(r"");
    return emailRegExp.hasMatch(this);
  }

  bool get isValidStrnig {
    final nameRegExp = RegExp(r"^[a-zA-Z\s]*$");
    return nameRegExp.hasMatch(this);
  }

  bool get isValidMeterReadig {
    final passwordRegExp = RegExp(r'^(-?)(0|([1-9][0-9]*))(\\.[0-9]+)?$');
    return passwordRegExp.hasMatch(this);
  }

  bool get isNotNull {
    return this != null;
  }

  bool get isValidPhone {
    final phoneRegExp = RegExp(r"^\+?0[0-9]{10}$");
    return phoneRegExp.hasMatch(this);
  }
}
