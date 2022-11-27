import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rento/components/images.dart';
import 'package:rento/utility_funtions.dart/ts.dart';
import 'package:rento/view/bottom_navigation/home/search/search_screen_view.dart';

import '../../../helpers/common_colors.dart';

class SearchScreen2 extends StatefulWidget {
  const SearchScreen2({Key? key}) : super(key: key);

  @override
  State<SearchScreen2> createState() => _SearchScreen2State();
}

class _SearchScreen2State extends State<SearchScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 1,
          shadowColor: CommonColors.whiteColor,
          backgroundColor: Get.isDarkMode
              ? CommonColors.blackColor
              : CommonColors.whiteColor,
          automaticallyImplyLeading: true,
          leading: InkWell(
              onTap: () {
                Get.back();
              },
              child: Icon(Icons.arrow_back,
                  color: Get.isDarkMode
                      ? CommonColors.whiteColor
                      : CommonColors.blackColor)),
          title: SizedBox(
            height: 46.sp,
            width: double.infinity,
            child: TextField(
              onTap: () {
                Get.to(() => const SearchScreenView());
              },
              decoration: InputDecoration(
                  fillColor: CommonColors.whiteColor,
                  filled: true,
                  enabledBorder: const OutlineInputBorder(
                    borderSide:
                        BorderSide(color: CommonColors.greyColor5, width: 0.0),
                  ),
                  prefixIcon: Image.asset(
                    Images.search1,
                    scale: 3,
                  ),
                  suffixIcon: const Icon(
                    Icons.cancel,
                    color: CommonColors.greyColor6,
                  ),
                  label: Text(
                    "search".tr,
                    style: Ts.medium16(CommonColors.greyColor5),
                  )),
            ),
          ),
        ),
        backgroundColor: Get.isDarkMode
            ? CommonColors.darkBackgroundColor
            : CommonColors.whiteColor,
        body: InkWell(
          onTap: () {
            Get.to(() => const SearchScreenView());
          },
          child: Get.isDarkMode
              ? const SizedBox()
              : Center(
                  child: Image.asset(
                    Images.search,
                    scale: 4,
                  ),
                ),
        ));
  }
}
