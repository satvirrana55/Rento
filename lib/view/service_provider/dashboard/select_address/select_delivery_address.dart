import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/utility_funtions.dart/ts.dart';
import 'package:rento/view/service_provider/dashboard/select_address/components/select_delivery_address_card.dart';

import '../../../../utility_funtions.dart/size.dart';
import '../../common/comman_app_bar.dart';

class SelectDeliveryAddress extends StatefulWidget {
  const SelectDeliveryAddress({Key? key}) : super(key: key);

  @override
  State<SelectDeliveryAddress> createState() => _SelectDeliveryAddressState();
}

class _SelectDeliveryAddressState extends State<SelectDeliveryAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: CommonAppBar(
            elevation: 1,
            tittle: 'Select Delivery Address',
          ),
        ),
        backgroundColor: Get.isDarkMode
            ? CommonColors.darkBackgroundColor
            : CommonColors.primaryBackgroundColor,
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Address",
                  style: Get.isDarkMode
                      ? Ts.semiBold16(CommonColors.whiteColor)
                      : Ts.semiBold16(CommonColors.blackColor)),
              Hbox(25.sp),
              const SelectDiliveryAddressCard(
                title: 'Home',
                address:
                    "H. 7424 Street 545, Sector B254 Noida Uttar Pradesh 210301",
              ),
              Hbox(25.sp),
              const SelectDiliveryAddressCard(
                title: 'Office',
                address:
                    "H. 7424 Street 545, Sector B254 Noida Uttar Pradesh 210301",
              ),
              Hbox(29.sp),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '+Add New Address',
                    style: Ts.medium13(CommonColors.primaryTextColor),
                  )
                ],
              ),
              Hbox(15.sp),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Get.isDarkMode
              ? CommonColors.blackColor
              : CommonColors.whiteColor,
          elevation: 0,
          child: Padding(
            padding: EdgeInsets.only(
                bottom: 14.sp, top: 14.sp, left: 24, right: 24.sp),
            child: SizedBox(
              height: 61.sp,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    shadowColor: CommonColors.primaryButtonColor,
                    side: const BorderSide(
                      color: CommonColors.primaryButtonColor,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    primary: CommonColors.primaryButtonColor),
                onPressed: () {},
                child: Text("continueButton".tr,
                    style: Ts.semiBold18(CommonColors.whiteColor)),
              ),
            ),
          ),
        ));
  }
}
