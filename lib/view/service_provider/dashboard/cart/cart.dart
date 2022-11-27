import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/utility_funtions.dart/size.dart';
import 'package:rento/utility_funtions.dart/ts.dart';

import '../../common/comman_app_bar.dart';
import 'commponents.dart/cart_card.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: CommonAppBar(
          elevation: 1,
          tittle: "cart".tr,
        ),
      ),
      backgroundColor: context.isDarkMode
          ? CommonColors.darkBackgroundColor
          : CommonColors.primaryBackgroundColor,
      body: Padding(
        padding: EdgeInsets.only(left: 20.sp, right: 20.sp, top: 14.sp),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return const CartCard();
                  }),
            ),
            Text('${"securityAmt".tr} : ₹20000/-',
                style: Get.isDarkMode
                    ? Ts.medium12(const Color.fromRGBO(142, 149, 146, 1))
                    : Ts.medium12(CommonColors.darkGreyColor)),
            Hbox(20.sp)
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Get.isDarkMode ? CommonColors.blackColor : Colors.white,
        elevation: 0,
        child: Padding(
          padding: EdgeInsets.only(
              bottom: 14.sp, top: 14.sp, left: 20, right: 20.sp),
          child: SizedBox(
              height: 61.sp,
              width: double.infinity,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.5.sp),
                    color: CommonColors.primaryButtonColor),
                child: Padding(
                  padding: EdgeInsets.only(left: 35, right: 9.sp),
                  child: Row(
                    children: [
                      Text(
                        '${"totalAmt".tr} : 8000/-',
                        style: Ts.regular16(CommonColors.whiteColor),
                      ),
                      const Spacer(flex: 1),
                      SizedBox(
                        height: 45.sp,
                        width: 126.sp,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            shadowColor: Colors.transparent,
                            side: const BorderSide(
                              color: CommonColors.primaryLightGreen4,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22.5),
                            ),
                            primary: CommonColors.primaryLightGreen4,
                          ),
                          onPressed: () {},
                          child: Text("book".tr,
                              style: Ts.semiBold18(CommonColors.whiteColor)),
                        ),
                      ),
                    ],
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
