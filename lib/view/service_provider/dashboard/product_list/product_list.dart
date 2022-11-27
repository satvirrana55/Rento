import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/utility_funtions.dart/navigator_helper.dart';
import 'package:rento/utility_funtions.dart/ts.dart';
import 'package:rento/view/service_provider/dashboard/product_list/componets/product_list_card.dart';
import 'package:rento/view/service_provider/dashboard/product_list/product_list_details/inactive_product_details.dart';
import 'package:rento/view/service_provider/dashboard/product_list/product_list_details/on_rent_product_details.dart';

import '../../common/comman_app_bar.dart';
import 'product_list_details/active_product_details.dart';

class ProductList extends StatefulWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50.0),
        child: CommonAppBar(
          tittle: "productList".tr,
          elevation: 0,
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
                      onPressed: () {},
                      child: Text(
                        'addProductPlus'.tr,
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
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Push.to(const ActiveProductDetails(), context);
                          },
                          child: ProductsListCard(
                            text: "active".tr,
                            color: Get.isDarkMode
                                ? CommonColors.lightGreen3
                                : CommonColors.primaryTextColor,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Push.to(const OnRentProductDetails(), context);
                          },
                          child: ProductsListCard(
                            text: "onRent".tr,
                            color: Get.isDarkMode
                                ? CommonColors.lightBlue3
                                : CommonColors.blueColor,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Push.to(const InActiveProductDetails(), context);
                          },
                          child: ProductsListCard(
                            text: "inactive".tr,
                            color: Get.isDarkMode
                                ? CommonColors.lightRed3
                                : CommonColors.primaryRed,
                          ),
                        ),
                      ],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
