import 'dart:developer';

import 'package:country_code_picker/country_code_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rento/components/buttons.dart';
import 'package:rento/components/textbox.dart';
import 'package:rento/controller/login/login_controller.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/themes/themes.dart';
import 'package:rento/utility_funtions.dart/size.dart';
import 'package:rento/view/authentication/verifyotp/verify_otp_screen_view.dart';

import '../../../utility_funtions.dart/ts.dart';

class LoginView extends StatefulWidget {
  final int? index;
  const LoginView({Key? key, this.index}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  CountryCode countryData = CountryCode.fromCountryCode("IN");

  final LoginController _loginController = Get.isRegistered<LoginController>()
      ? Get.find<LoginController>()
      : Get.put(LoginController());
  TextEditingController mobileNoController = TextEditingController();
  @override
  Widget build(BuildContext context) {
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
                "welToRento".tr,
                style: Get.isDarkMode
                    ? Ts.semiBold24(CommonColors.whiteColor)
                    : Ts.semiBold24(CommonColors.blackColor),
              ),
              Hbox(17.sp),
              Text(
                "enterMobNo".tr,
                style: Get.isDarkMode
                    ? Ts.medium14(CommonColors.whiteColor)
                    : Ts.medium14(CommonColors.lightGrey1),
              ),
              Hbox(27.sp),
              Stack(
                children: [
                  TextFormField(
                    style: Get.isDarkMode
                        ? Ts.medium14(CommonColors.whiteColor)
                        : Ts.medium14(CommonColors.blackColor),
                    enabled: false,
                    controller: TextEditingController(
                        text: '${countryData.name} (${countryData.dialCode})'),
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            width: 100, color: Color(0xff29BF79)),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                            width: 10, color: Color(0xffC0CCDA)),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      suffixIcon: Padding(
                        padding: EdgeInsets.only(right: 12.sp),
                        child: IconButton(
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            size: 25.0,
                            color: Get.isDarkMode
                                ? const Color.fromRGBO(173, 179, 183, 1)
                                : CommonColors.greyColor,
                          ),
                          onPressed: null,
                        ),
                      ),
                      prefixIcon: SizedBox(
                        height: 30,
                        child: Padding(
                          padding: EdgeInsets.only(
                              right: 13.sp, bottom: 0, left: 20.0.sp),
                          child: Image.asset(
                            countryData.flagUri!,
                            height: 30.sp,
                            width: 30.sp,
                            package: 'country_code_picker',
                          ),
                        ),
                      ),
                      hintText: "selectCountry".tr,
                      contentPadding: const EdgeInsets.only(top: 18),
                      hintStyle: Theme.of(context)
                          .textTheme
                          .subtitle1!
                          .copyWith(fontSize: 18),
                      counter: const Offstage(),
                    ),
                  ),
                  CountryCodePicker(
                    alignLeft: true,
                    padding: EdgeInsets.only(right: 10.sp),
                    showFlag: false,
                    onChanged: (value) {
                      setState(() {
                        countryData = value;
                        //_countryController.text = value.name!;
                      });
                    },
                    textStyle: const TextStyle(color: Colors.transparent),
                    initialSelection: countryData.name,
                    hideMainText: false,
                    showFlagDialog: true,
                    favorite: const ['+91'],
                  ),
                ],
              ),
              Hbox(27.sp),
              EntryTextField(
                label: "mobNo".tr,
                keyboardType: TextInputType.number,
                maxLength: 10,
                autofocus: true,
                controller: mobileNoController,
              ),
              Hbox(41.sp),
              BasicButton(
                textName: "login".tr,
                onPressed: () async {
                  String mobileNumber =
                      '${countryData.dialCode}${mobileNoController.text}';
                  String regexPattern = r'^(?:[+0][1-9])?[0-9]{10,12}$';
                  var regExp = RegExp(regexPattern);

                  if (mobileNoController.text.isEmpty &&
                      mobileNoController.text.length < 10) {
                    Get.snackbar('Invalid', '');
                    return;
                  } else if (mobileNoController.text.length < 10) {
                    Get.snackbar('Invalid', '');
                  } else if (regExp.hasMatch(mobileNoController.text)) {
                    if (widget.index == 0) {
                      _loginController.login(0, mobileNumber);
                    } else {
                      _loginController.login(1, mobileNumber);
                    }
                  }
                },
                width: double.infinity,
              ),
              Hbox(41.sp),
            ],
          ),
        ));
  }
}
