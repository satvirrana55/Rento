// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/utility_funtions.dart/navigator_helper.dart';
import 'package:rento/utility_funtions.dart/size.dart';
import 'package:rento/view/service_provider/add_products/add_products.dart';
import 'package:rento/view/service_provider/common/comman_app_bar.dart';
import 'package:rento/view/service_provider/select_categories/components/chip.dart';

import '../../../utility_funtions.dart/ts.dart';

class SelectCategory extends StatefulWidget {
  const SelectCategory({Key? key}) : super(key: key);

  @override
  State<SelectCategory> createState() => _SelectCategoryState();
}

class _SelectCategoryState extends State<SelectCategory> {
  // ignore: non_constant_identifier_names
  List<dynamic> ChipData = [
    "Electronics & Appliances",
    "Cars",
    "Bikes",
    "Mobile Phones",
    "Furniture",
    "Computer & Laptop",
    "Fashion",
    "Properties"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: CommonAppBar(
          tittle: 'selectCategoriesAppBar'.tr,
          color: Colors.transparent,
          elevation: 0.5,
        ),
      ),
      backgroundColor: Get.isDarkMode
          ? CommonColors.darkBackgroundColor
          : CommonColors.whiteColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 17.sp,
                left: 10.sp,
                right: 10.sp,
              ),
              child: Container(
                child: Wrap(
                    spacing: 6.sp,
                    runSpacing: -4,
                    children: List<Widget>.generate(ChipData.length, (index) {
                      return ChipWidget(label: ChipData[index]);
                    })),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 0, top: 5),
        child: Container(
          height: 130.sp,
          color: Get.isDarkMode
              ? CommonColors.darkBackgroundColor
              : CommonColors.whiteColor,
          child: Padding(
            padding: EdgeInsets.only(
              left: 38.sp,
              right: 38.sp,
            ),
            child: Column(
              children: [
                const SizedBox(
                  width: 6,
                ),
                SizedBox(
                  height: 51.sp,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      side: const BorderSide(
                        color: CommonColors.primaryButtonColor,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      primary: CommonColors.primaryButtonColor,
                    ),
                    onPressed: () {
                      Push.to(const AddProducts(), context);
                    },
                    child: Text("addProductButton".tr,
                        style: Ts.medium18(CommonColors.whiteColor)),
                  ),
                ),
                const Hbox(10),
                SizedBox(
                  height: 51.sp,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      side: BorderSide(
                        color: Get.isDarkMode
                            ? CommonColors.primaryButtonColor
                            : CommonColors.blackColor,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      primary: Get.isDarkMode
                          ? CommonColors.darkBackgroundColor
                          : CommonColors.whiteColor,
                    ),
                    onPressed: () {
                      Push.to(const AddProducts(), context);
                    },
                    child: Text("skipAllButton".tr,
                        style: Get.isDarkMode
                            ? Ts.medium18(CommonColors.whiteColor)
                            : Ts.medium18(CommonColors.blackColor)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
