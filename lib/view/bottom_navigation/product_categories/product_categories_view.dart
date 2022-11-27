import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rento/components/buttons.dart';
import 'package:rento/utility_funtions.dart/size.dart';

import '../../../components/images.dart';
import '../../../controller/product_category/product_category_controller.dart';
import '../../../helpers/common_colors.dart';
import '../../../utility_funtions.dart/ts.dart';
import '../../service_provider/common/comman_app_bar.dart';

class ProductCategoriesView extends StatefulWidget {
  const ProductCategoriesView({Key? key}) : super(key: key);

  @override
  State<ProductCategoriesView> createState() => _ProductCategoriesViewState();
}

class _ProductCategoriesViewState extends State<ProductCategoriesView> {
  final TextEditingController searchController = TextEditingController();
  final ProductCategoryController _productCategoryController =
      Get.isRegistered<ProductCategoryController>()
          ? Get.find<ProductCategoryController>()
          : Get.put(ProductCategoryController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.isDarkMode
          ? CommonColors.darkBackgroundColor
          : CommonColors.bgColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.sp),
        child: CommonAppBar(
          tittle: "productCat".tr,
          color: CommonColors.blackColor,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Get.isDarkMode
                  ? CommonColors.blackColor
                  : CommonColors.bgColor,
              child: Padding(
                padding: EdgeInsets.only(
                    left: 20.sp, right: 20.sp, top: 10.sp, bottom: 5.sp),
                child: SizedBox(
                  height: 50.sp,
                  width: double.infinity,
                  child: TextField(
                    style: const TextStyle(color: CommonColors.blackColor),
                    controller: searchController,
                    decoration: InputDecoration(
                        hoverColor: Colors.black,
                        filled: true,
                        fillColor: Get.isDarkMode
                            ? CommonColors.whiteColor
                            : Colors.transparent,
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                              color: CommonColors.greyColor5, width: 0.0),
                        ),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        prefixIcon: Image.asset(
                          Images.search1,
                          scale: 2.5,
                        ),
                        label: Text(
                          "search".tr,
                          style: Ts.medium18(CommonColors.blackColor),
                        )),
                  ),
                ),
              ),
            ),
            Container(
              height: .8,
              color: CommonColors.greyColor,
            ),
            Padding(
              padding: EdgeInsets.only(left: 48.sp, top: 19, bottom: 15),
              child: Row(
                children: [
                  Container(
                    height: 17,
                    width: 17,
                    color: Get.isDarkMode
                        ? CommonColors.primaryBackgroundColor
                        : Colors.white,
                    child: Checkbox(
                        side: BorderSide(
                            width: 1.sp, color: CommonColors.greyColor),
                        value: _productCategoryController.val,
                        activeColor: CommonColors.primaryButtonColor,
                        onChanged: (value) {
                          setState(() {
                            _productCategoryController.val = value as bool;
                          });
                        }),
                  ),
                  const Wbox(10),
                  Text(
                    'All',
                    style: Get.isDarkMode
                        ? Ts.medium13(CommonColors.whiteColor)
                        : Ts.medium13(CommonColors.blackColor),
                  )
                ],
              ),
            ),
            const Divider(
              color: CommonColors.greyColor,
            ),
            Padding(
              padding: EdgeInsets.only(left: 48.sp, top: 19, bottom: 15),
              child: Row(
                children: [
                  Container(
                    height: 17,
                    width: 17,
                    color: Get.isDarkMode ? CommonColors.bgColor : Colors.white,
                    child: Checkbox(
                        side: BorderSide(
                            width: 1.sp, color: CommonColors.greyColor),
                        value: _productCategoryController.val1,
                        activeColor: CommonColors.primaryButtonColor,
                        onChanged: (value) {
                          setState(() {
                            _productCategoryController.val1 = value as bool;
                          });
                        }),
                  ),
                  const Wbox(10),
                  Text(
                    'Cars',
                    style: Get.isDarkMode
                        ? Ts.medium13(CommonColors.whiteColor)
                        : Ts.medium13(CommonColors.blackColor),
                  )
                ],
              ),
            ),
            const Divider(
              color: CommonColors.greyColor,
            ),
            Padding(
              padding: EdgeInsets.only(left: 48.sp, top: 19, bottom: 15),
              child: Row(
                children: [
                  Container(
                    height: 17,
                    width: 17,
                    color: Get.isDarkMode ? CommonColors.bgColor : Colors.white,
                    child: Checkbox(
                        side: BorderSide(
                            width: 1.sp, color: CommonColors.greyColor),
                        value: _productCategoryController.val2,
                        activeColor: CommonColors.primaryButtonColor,
                        onChanged: (value) {
                          setState(() {
                            _productCategoryController.val2 = value as bool;
                          });
                        }),
                  ),
                  const Wbox(10),
                  Text(
                    'Home appliance',
                    style: Get.isDarkMode
                        ? Ts.medium13(CommonColors.whiteColor)
                        : Ts.medium13(CommonColors.blackColor),
                  )
                ],
              ),
            ),
            const Divider(
              color: CommonColors.greyColor,
            ),
            Padding(
              padding: EdgeInsets.only(left: 48.sp, top: 19, bottom: 15),
              child: Row(
                children: [
                  Container(
                    height: 17,
                    width: 17,
                    color: Get.isDarkMode ? CommonColors.bgColor : Colors.white,
                    child: Checkbox(
                        side: BorderSide(
                            width: 1.sp, color: CommonColors.greyColor),
                        value: _productCategoryController.val3,
                        activeColor: CommonColors.primaryButtonColor,
                        onChanged: (value) {
                          setState(() {
                            _productCategoryController.val3 = value as bool;
                          });
                        }),
                  ),
                  const Wbox(10),
                  Text(
                    'Bikes',
                    style: Get.isDarkMode
                        ? Ts.medium13(CommonColors.whiteColor)
                        : Ts.medium13(CommonColors.blackColor),
                  )
                ],
              ),
            ),
            const Divider(
              color: CommonColors.greyColor,
            ),
            Padding(
              padding: EdgeInsets.only(left: 48.sp, top: 19, bottom: 15),
              child: Row(
                children: [
                  Container(
                    height: 17,
                    width: 17,
                    color: Get.isDarkMode ? CommonColors.bgColor : Colors.white,
                    child: Checkbox(
                        side: BorderSide(
                            width: 1.sp, color: CommonColors.greyColor),
                        value: _productCategoryController.val4,
                        activeColor: CommonColors.primaryButtonColor,
                        onChanged: (value) {
                          setState(() {
                            _productCategoryController.val4 = value as bool;
                          });
                        }),
                  ),
                  const Wbox(10),
                  Text(
                    'Computer',
                    style: Get.isDarkMode
                        ? Ts.medium13(CommonColors.whiteColor)
                        : Ts.medium13(CommonColors.blackColor),
                  )
                ],
              ),
            ),
            const Divider(
              color: CommonColors.greyColor,
            ),
            Padding(
              padding: EdgeInsets.only(left: 48.sp, top: 19, bottom: 15),
              child: Row(
                children: [
                  Container(
                    height: 17,
                    width: 17,
                    color: Get.isDarkMode ? CommonColors.bgColor : Colors.white,
                    child: Checkbox(
                        side: BorderSide(
                            width: 1.sp, color: CommonColors.greyColor),
                        value: _productCategoryController.val5,
                        activeColor: CommonColors.primaryButtonColor,
                        onChanged: (value) {
                          setState(() {
                            _productCategoryController.val5 = value as bool;
                          });
                        }),
                  ),
                  const Wbox(10),
                  Text(
                    'Laptop',
                    style: Get.isDarkMode
                        ? Ts.medium13(CommonColors.whiteColor)
                        : Ts.medium13(CommonColors.blackColor),
                  )
                ],
              ),
            ),
            const Divider(
              color: CommonColors.greyColor,
            ),
            Padding(
              padding: EdgeInsets.only(left: 48.sp, top: 19, bottom: 15),
              child: Row(
                children: [
                  Container(
                    height: 17,
                    width: 17,
                    color: Get.isDarkMode ? CommonColors.bgColor : Colors.white,
                    child: Checkbox(
                        side: BorderSide(
                            width: 1.sp, color: CommonColors.greyColor),
                        value: _productCategoryController.val6,
                        activeColor: CommonColors.primaryButtonColor,
                        onChanged: (value) {
                          setState(() {
                            _productCategoryController.val6 = value as bool;
                          });
                        }),
                  ),
                  const Wbox(10),
                  Text(
                    'Mobile',
                    style: Get.isDarkMode
                        ? Ts.medium13(CommonColors.whiteColor)
                        : Ts.medium13(CommonColors.blackColor),
                  )
                ],
              ),
            ),
            const Divider(
              color: CommonColors.greyColor,
            ),
            Padding(
              padding: EdgeInsets.only(left: 48.sp, top: 19, bottom: 15),
              child: Row(
                children: [
                  Container(
                    height: 17,
                    width: 17,
                    color: Get.isDarkMode ? CommonColors.bgColor : Colors.white,
                    child: Checkbox(
                        side: BorderSide(
                            width: 1.sp, color: CommonColors.greyColor),
                        value: _productCategoryController.val7,
                        activeColor: CommonColors.primaryButtonColor,
                        onChanged: (value) {
                          setState(() {
                            _productCategoryController.val7 = value as bool;
                          });
                        }),
                  ),
                  const Wbox(10),
                  Text(
                    'TV',
                    style: Get.isDarkMode
                        ? Ts.medium13(CommonColors.whiteColor)
                        : Ts.medium13(CommonColors.blackColor),
                  )
                ],
              ),
            ),
            const Divider(
              color: CommonColors.greyColor,
            ),
            Padding(
              padding: EdgeInsets.only(left: 48.sp, top: 19, bottom: 15),
              child: Row(
                children: [
                  Container(
                    height: 17,
                    width: 17,
                    color: Get.isDarkMode ? CommonColors.bgColor : Colors.white,
                    child: Checkbox(
                        side: BorderSide(
                            width: 1.sp, color: CommonColors.greyColor),
                        value: _productCategoryController.val8,
                        activeColor: CommonColors.primaryButtonColor,
                        onChanged: (value) {
                          setState(() {
                            _productCategoryController.val8 = value as bool;
                          });
                        }),
                  ),
                  const Wbox(10),
                  Text(
                    'Furniture',
                    style: Get.isDarkMode
                        ? Ts.medium13(CommonColors.whiteColor)
                        : Ts.medium13(CommonColors.blackColor),
                  )
                ],
              ),
            ),
            const Divider(
              color: CommonColors.greyColor,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            color: Get.isDarkMode
                ? CommonColors.blackColor
                : CommonColors.whiteColor,
            border: Border(
                top: BorderSide(
                    width: 0.5,
                    color: Get.isDarkMode
                        ? CommonColors.greyColor5
                        : Colors.white))),
        child: Padding(
          padding: EdgeInsets.only(
              left: 20.sp, right: 20.sp, top: 15.sp, bottom: 15.sp),
          child: BasicButton(
            width: double.infinity,
            textName: "done".tr,
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
