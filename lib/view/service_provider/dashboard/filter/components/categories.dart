import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/utility_funtions.dart/size.dart';
import 'package:rento/utility_funtions.dart/ts.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  final TextEditingController text = TextEditingController();
  bool val = false;
  bool val1 = false;
  bool val2 = false;

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
                              width: 1, color: CommonColors.primaryTextColor),
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
                    "all".tr,
                    style: Get.isDarkMode
                        ? Ts.regular14(CommonColors.whiteColor)
                        : Ts.regular14(CommonColors.blackColor),
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
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    "cars".tr,
                    style: Get.isDarkMode
                        ? Ts.regular14(CommonColors.whiteColor)
                        : Ts.regular14(CommonColors.blackColor),
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
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    "homeappliance".tr,
                    style: Get.isDarkMode
                        ? Ts.regular14(CommonColors.whiteColor)
                        : Ts.regular14(CommonColors.blackColor),
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
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    "bikes".tr,
                    style: Get.isDarkMode
                        ? Ts.regular14(CommonColors.whiteColor)
                        : Ts.regular14(CommonColors.blackColor),
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
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    "computer".tr,
                    style: Get.isDarkMode
                        ? Ts.regular14(CommonColors.whiteColor)
                        : Ts.regular14(CommonColors.blackColor),
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
                        ? Ts.regular14(CommonColors.primaryTextColor)
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
