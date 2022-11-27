import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/utility_funtions.dart/size.dart';

import '../../../../utility_funtions.dart/ts.dart';

class TermAndConditionScreenView extends StatefulWidget {
  const TermAndConditionScreenView({Key? key}) : super(key: key);

  @override
  State<TermAndConditionScreenView> createState() =>
      _TermAndConditionScreenViewState();
}

class _TermAndConditionScreenViewState
    extends State<TermAndConditionScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Get.isDarkMode
            ? CommonColors.darkBackgroundColor
            : CommonColors.whiteColor,
        appBar: AppBar(
          backgroundColor: Get.isDarkMode
              ? CommonColors.blackColor
              : CommonColors.whiteColor,
          automaticallyImplyLeading: true,
          shadowColor: Colors.white,
          leading: InkWell(
              onTap: () {
                Get.back();
              },
              child: Icon(Icons.arrow_back,
                  color: Get.isDarkMode
                      ? CommonColors.whiteColor
                      : CommonColors.blackColor)),
          title: Text(
            "termsandConditions".tr,
            style: Get.isDarkMode
                ? Ts.semiBold18(CommonColors.whiteColor)
                : Ts.semiBold18(CommonColors.blackColor),
          ),
          elevation: 1,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "introduction".tr,
                  style: Get.isDarkMode
                      ? Ts.semiBold14(CommonColors.whiteColor)
                      : Ts.semiBold14(CommonColors.darkGreyColor5),
                ),
                const Hbox(20),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sed imperdiet magna, ac laoreet lectus. Ut ultrices urna a orci blandit scelerisque. Praesent tortor nisl, finibus at faucibus id, pellentesque eu dui. Proin lobortis augue vitae massa feugiat hendrerit vitae eu ligula. Etiam eget magna nec elit rhoncus maximus varius in elit. Sed rhoncus ultrices orci nec interdum. Etiam pretium mattis ligula, ac semper felis eleifend at. Morbi ligula nunc, cursus at massa ut, finibus auctor augue. Donec non pharetra justo. Proin sed tempor magna. Sed pretium nunc ac nisl convalli',
                  style: Get.isDarkMode
                      ? Ts.regular10(CommonColors.greyDark4)
                      : Ts.regular10(CommonColors.greyColor9),
                ),
                const Hbox(12),
                Text(
                  "propertyRights".tr,
                  style: Get.isDarkMode
                      ? Ts.semiBold14(CommonColors.whiteColor)
                      : Ts.semiBold14(CommonColors.darkGreyColor5),
                ),
                const Hbox(20),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sed imperdiet magna, ac laoreet lectus. Ut ultrices urna a orci blandit scelerisque. Praesent tortor nisl, finibus at faucibus id, pellentesque eu dui. Proin lobortis augue vitae massa feugiat hendrerit vitae eu ligula. Etiam eget magna nec elit rhoncus maximus varius in elit. Sed rhoncus ultrices orci nec interdum. Etiam pretium mattis ligula, ac semper felis eleifend at. Morbi ligula nunc, cursus at massa ut, finibus auctor augue. Donec non pharetra justo. Proin sed tempor magna. Sed pretium nunc ac nisl convalli',
                  style: Get.isDarkMode
                      ? Ts.regular10(CommonColors.greyDark4)
                      : Ts.regular10(CommonColors.greyColor9),
                ),
                const Hbox(5),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sed imperdiet magna, ac laoreet lectus. Ut ultrices urna a orci blandit scelerisque. Praesent tortor nisl, finibus at faucibus id, pellentesque eu dui. Proin lobortis augue vitae massa feugiat hendrerit vitae eu ligula. Etiam eget magna nec elit rhoncus maximus varius in elit. Sed rhoncus ultrices orci nec interdum. Etiam pretium mattis ligula, ac semper felis eleifend at. Morbi ligula nunc, cursus at massa ut, finibus auctor augue. Donec non pharetra justo. Proin sed tempor magna. Sed pretium nunc ac nisl convalli',
                  style: Get.isDarkMode
                      ? Ts.regular10(CommonColors.greyDark4)
                      : Ts.regular10(CommonColors.greyColor9),
                ),
                const Hbox(12),
                Text(
                  "restrictions".tr,
                  style: Get.isDarkMode
                      ? Ts.semiBold14(CommonColors.whiteColor)
                      : Ts.semiBold14(CommonColors.darkGreyColor5),
                ),
                const Hbox(20),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sed imperdiet magna, ac laoreet lectus. Ut ultrices urna a orci blandit scelerisque. Praesent tortor nisl, finibus at faucibus id, pellentesque eu dui. Proin lobortis augue vitae massa feugiat hendrerit vitae eu ligula. Etiam eget magna nec elit rhoncus maximus varius in elit. Sed rhoncus ultrices orci nec interdum. Etiam pretium mattis ligula, ac semper felis eleifend at. Morbi ligula nunc, cursus at massa ut, finibus auctor augue. Donec non pharetra justo. Proin sed tempor magna. Sed pretium nunc ac nisl convalli',
                  style: Get.isDarkMode
                      ? Ts.regular10(CommonColors.greyDark4)
                      : Ts.regular10(CommonColors.greyColor9),
                ),
                const Hbox(5),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sed imperdiet magna, ac laoreet lectus. Ut ultrices urna a orci blandit scelerisque. Praesent tortor nisl, finibus at faucibus id, pellentesque eu dui. Proin lobortis augue vitae massa feugiat hendrerit vitae eu ligula. Etiam eget magna nec elit rhoncus maximus varius in elit. Sed rhoncus ultrices orci nec interdum. Etiam pretium mattis ligula, ac semper felis eleifend at. Morbi ligula nunc, cursus at massa ut, finibus auctor augue. Donec non pharetra justo. Proin sed tempor magna. Sed pretium nunc ac nisl convalli',
                  style: Get.isDarkMode
                      ? Ts.regular10(CommonColors.greyDark4)
                      : Ts.regular10(CommonColors.greyColor9),
                ),
              ],
            ),
          ),
        ));
  }
}
