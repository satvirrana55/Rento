import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/utility_funtions.dart/size.dart';
import 'package:rento/utility_funtions.dart/ts.dart';
import 'package:rento/view/service_provider/dashboard/product_on_rent/components/product_details_card.dart';

import '../../common/comman_app_bar.dart';

class ProductDetailsOnRent extends StatefulWidget {
  const ProductDetailsOnRent({Key? key}) : super(key: key);

  @override
  State<ProductDetailsOnRent> createState() => _ProductDetailsOnRentState();
}

class _ProductDetailsOnRentState extends State<ProductDetailsOnRent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.sp),
        child: CommonAppBar(
          tittle: 'MZ ZS EV',
          elevation: Get.isDarkMode ? 0.5 : 0.0,
        ),
      ),
      backgroundColor: Get.isDarkMode
          ? CommonColors.darkBackgroundColor
          : CommonColors.primaryBackgroundColor,
      body: Padding(
        padding: EdgeInsets.only(left: 20.sp, right: 20.sp, top: 15.sp),
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 1,
            itemBuilder: (context, index) {
              return Column(
                children: const [OrderDetailScreen(), Hbox(21)],
              );
            }),
      ),
      bottomNavigationBar: Container(
        height: 77.sp,
        decoration: BoxDecoration(
          color: Get.isDarkMode
              ? CommonColors.blackColor
              : CommonColors.whiteColor,
          border: Border(
              top: BorderSide(
                  width: 0.5,
                  color:
                      Get.isDarkMode ? CommonColors.greyColor5 : Colors.white)),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 0, right: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 6,
              ),
              Container(
                height: 48.sp,
                width: MediaQuery.of(context).size.width / 2.2,
                decoration: BoxDecoration(
                  color: CommonColors.blueColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextButton(
                  child: Text(
                    'Call',
                    style: Ts.semiBold14(CommonColors.whiteColor),
                  ),
                  onPressed: () {},
                ),
              ),
              const SizedBox(
                width: 6,
              ),
              Container(
                height: 48.sp,
                width: MediaQuery.of(context).size.width / 2.2,
                decoration: BoxDecoration(
                  color: CommonColors.primaryRed,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextButton(
                  child: Text(
                    'Cancel',
                    style: Ts.semiBold14(CommonColors.whiteColor),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
