import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/utility_funtions.dart/navigator_helper.dart';
import 'package:rento/utility_funtions.dart/size.dart';
import 'package:rento/view/service_provider/dashboard/order_history/order_history.dart';
import 'package:rento/view/service_provider/dashboard/product_on_rent/components/product_on_rent_card.dart';
import 'package:rento/view/service_provider/dashboard/product_on_rent/product_details.dart';

import '../../common/comman_app_bar.dart';

class ProductOnRent extends StatefulWidget {
  const ProductOnRent({Key? key}) : super(key: key);

  @override
  State<ProductOnRent> createState() => _ProductOnRentState();
}

class _ProductOnRentState extends State<ProductOnRent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: CommonAppBar(
            tittle: "productOnRent".tr,
            value: "orderHistory".tr,
            elevation: Get.isDarkMode ? 0.5 : 0.0,
            color: Get.isDarkMode
                ? CommonColors.primaryButtonColor
                : CommonColors.blueColor,
            navigator: OrderHistory(),
          ),
        ),
        backgroundColor: Get.isDarkMode
            ? CommonColors.darkBackgroundColor
            : CommonColors.primaryBackgroundColor,
        body: Padding(
          padding: EdgeInsets.only(left: 20.sp, right: 20.sp, top: 15.sp),
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    InkWell(
                        onTap: () {
                          Push.to(const ProductDetailsOnRent(), context);
                        },
                        child: const ProductOnRentCard()),
                    const Hbox(14),
                  ],
                );
              }),
        ));
  }
}
