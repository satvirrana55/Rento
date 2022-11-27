import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rento/components/buttons.dart';
import 'package:rento/controller/register/register_controller.dart';
import 'package:rento/themes/themes.dart';
import 'package:rento/utility_funtions.dart/size.dart';

import '../../../components/textbox.dart';
import '../../../helpers/common_colors.dart';
import '../../../utility_funtions.dart/ts.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final RegisterController _registerController =
      Get.isRegistered<RegisterController>()
          ? Get.find<RegisterController>()
          : Get.put(RegisterController());
  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Get.put(ThemeProvider());

    return Scaffold(
        backgroundColor: Get.isDarkMode
            ? CommonColors.darkBackgroundColor
            : CommonColors.whiteColor,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hbox(73.sp),
              Text(
                "comProf".tr,
                style: Get.isDarkMode
                    ? Ts.semiBold24(CommonColors.whiteColor)
                    : Ts.semiBold24(CommonColors.blackColor),
              ),
              Hbox(33.sp),
              EntryTextField(
                label: "userName".tr,
                keyboardType: TextInputType.number,
                maxLength: 10,
                autofocus: true,
              ),
              Hbox(11.sp),
              EntryTextField(
                label: "email".tr,
                keyboardType: TextInputType.number,
                maxLength: 10,
              ),
              Hbox(30.sp),
              BasicButton(
                textName: "save".tr,
                onPressed: () {
                  _registerController.registerUser();
                },
                width: double.infinity,
              ),
            ],
          ),
        ));
  }
}
