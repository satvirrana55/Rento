import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/utility_funtions.dart/navigator_helper.dart';
import 'package:rento/utility_funtions.dart/ts.dart';

import '../account_sucessfully/account_succssfully_create.dart';
import '../common/comman_app_bar.dart';
import '../common/common_button.dart';
import '../select_categories_2/select_categorys_2.dart';
import 'components/add_products_card.dart';

class AddProducts extends StatefulWidget {
  const AddProducts({Key? key}) : super(key: key);

  @override
  State<AddProducts> createState() => _AddProductsState();
}

class _AddProductsState extends State<AddProducts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: CommonAppBar(
          tittle: "addProductsAppBar".tr,
          value: "skip".tr,
          color: Get.isDarkMode
              ? CommonColors.primaryTextColor
              : CommonColors.blackColor,
        ),
      ),
      backgroundColor: Get.isDarkMode
          ? CommonColors.darkBackgroundColor
          : CommonColors.primaryBackgroundColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Get.isDarkMode
                      ? CommonColors.darkBackgroundColor
                      : CommonColors.whiteColor,
                  border: Border(
                      bottom: BorderSide(
                          width: 0.5,
                          color: Get.isDarkMode
                              ? CommonColors.greyColor5
                              : Colors.white),
                      top: BorderSide(
                          width: 0.5,
                          color: Get.isDarkMode
                              ? CommonColors.greyColor5
                              : Colors.white))),
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                      onPressed: () {
                        Push.to(const SelectCategoryScreen(), context);
                      },
                      child: Text(
                        "addProductPlus".tr,
                        style: Get.isDarkMode
                            ? Ts.semiBold16(CommonColors.primaryTextColor)
                            : Ts.semiBold16(
                                const Color.fromRGBO(60, 106, 236, 1)),
                      )),
                ),
              ),
            ),
            SizedBox(
              height: 15.sp,
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: 2,
                itemBuilder: (context, index) {
                  return const AddProductsCard();
                }),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 25, left: 20, right: 17),
        child: CommonButton(
          tittle: "continueButton".tr,
          navigator: AccountCreateSuccessfully(),
        ),
      ),
    );
  }
}
