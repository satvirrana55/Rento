import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/utility_funtions.dart/size.dart';
import 'package:rento/utility_funtions.dart/ts.dart';

class Brand extends StatefulWidget {
  const Brand({Key? key}) : super(key: key);

  @override
  State<Brand> createState() => _BrandState();
}

class _BrandState extends State<Brand> {
  final TextEditingController text = TextEditingController();
  bool val = false;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 20.sp, left: 14.sp, right: 14.sp),
              child: SizedBox(
                height: 39,
                child: TextFormField(
                    style: Ts.medium14(CommonColors.blackColor),
                    maxLines: 1,
                    controller: text,
                    onFieldSubmitted: (inputValue) {
                      if (inputValue.length > 1) {
                      } else {}
                    },
                    validator: (input) {
                      if (input!.isNotEmpty) {
                        return null;
                      } else if (input.isNotEmpty) {
                      } else {}
                      return null;
                    },
                    decoration: InputDecoration(
                        fillColor: Get.isDarkMode
                            ? CommonColors.whiteColor
                            : Colors.transparent,
                        filled: true,
                        contentPadding: const EdgeInsets.all(10),
                        hintText: "search".tr,
                        hintStyle: Get.isDarkMode
                            ? Ts.medium13(CommonColors.primaryLightGrey5)
                            : Ts.medium13(CommonColors.darkGreyColor1),
                        labelStyle: Ts.medium13(CommonColors.darkGreyColor1),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: .5, color: CommonColors.primaryTextColor),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: .5, color: CommonColors.primaryLightGrey8),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        focusColor: CommonColors.greyColor,
                        suffixIcon: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: IconButton(
                            color: Get.isDarkMode
                                ? const Color.fromRGBO(149, 149, 149, 1)
                                : const Color.fromRGBO(149, 149, 149, 1),
                            onPressed: () {},
                            icon: const Icon(Icons.search),
                          ),
                        ))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 14),
              child: Row(
                children: [
                  Container(
                    color: Colors.white,
                    height: 17,
                    width: 17,
                    child: Checkbox(
                        side: BorderSide(
                            width: 1.sp, color: CommonColors.greyColor),
                        value: val,
                        activeColor: CommonColors.primaryButtonColor,
                        onChanged: (value) {
                          setState(() {
                            val = value as bool;
                          });
                        }),
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Maruti Suzuki',
                    style: Get.isDarkMode
                        ? Ts.medium13(CommonColors.whiteColor)
                        : Ts.medium13(CommonColors.blackColor),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 14),
              child: Row(
                children: [
                  Container(
                    color: Colors.white,
                    height: 17,
                    width: 17,
                    child: Checkbox(
                        side: BorderSide(
                            width: 1.sp, color: CommonColors.greyColor),
                        value: val,
                        activeColor: CommonColors.primaryButtonColor,
                        onChanged: (value) {
                          setState(() {
                            val = value as bool;
                          });
                        }),
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "LG",
                    style: Get.isDarkMode
                        ? Ts.medium13(CommonColors.whiteColor)
                        : Ts.medium13(CommonColors.blackColor),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 14),
              child: Row(
                children: [
                  Container(
                    color: Colors.white,
                    height: 17,
                    width: 17,
                    child: Checkbox(
                        side: BorderSide(
                            width: 1.sp, color: CommonColors.greyColor),
                        value: val,
                        activeColor: CommonColors.primaryButtonColor,
                        onChanged: (value) {
                          setState(() {
                            val = value as bool;
                          });
                        }),
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Yamaha",
                    style: Get.isDarkMode
                        ? Ts.medium13(CommonColors.whiteColor)
                        : Ts.medium13(CommonColors.blackColor),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 14),
              child: Row(
                children: [
                  Container(
                    color: Colors.white,
                    height: 17,
                    width: 17,
                    child: Checkbox(
                        side: BorderSide(
                            width: 1.sp, color: CommonColors.greyColor),
                        value: val,
                        activeColor: CommonColors.primaryButtonColor,
                        onChanged: (value) {
                          setState(() {
                            val = value as bool;
                          });
                        }),
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Gidraj",
                    style: Get.isDarkMode
                        ? Ts.medium13(CommonColors.whiteColor)
                        : Ts.medium13(CommonColors.blackColor),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 14),
              child: Row(
                children: [
                  Container(
                    color: Colors.white,
                    height: 17,
                    width: 17,
                    child: Checkbox(
                        side: BorderSide(
                            width: 1.sp, color: CommonColors.greyColor),
                        value: val,
                        activeColor: CommonColors.primaryButtonColor,
                        onChanged: (value) {
                          setState(() {
                            val = value as bool;
                          });
                        }),
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "WN",
                    style: Get.isDarkMode
                        ? Ts.medium13(CommonColors.whiteColor)
                        : Ts.medium13(CommonColors.blackColor),
                  )
                ],
              ),
            ),
            Hbox(41.sp),
            Padding(
              padding: const EdgeInsets.only(right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "clearall".tr,
                    style: Get.isDarkMode
                        ? Ts.medium13(CommonColors.primaryTextColor)
                        : Ts.medium13(CommonColors.blackColor),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
