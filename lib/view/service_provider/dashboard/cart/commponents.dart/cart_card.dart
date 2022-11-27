import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rento/components/images.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/utility_funtions.dart/size.dart';
import 'package:rento/utility_funtions.dart/ts.dart';

class CartCard extends StatefulWidget {
  const CartCard({Key? key}) : super(key: key);

  @override
  State<CartCard> createState() => _CartCardState();
}

class _CartCardState extends State<CartCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Get.isDarkMode
                ? CommonColors.lightDark1
                : CommonColors.whiteColor,
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 4.sp, top: 4.sp, bottom: 5.sp),
            child: Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(15.sp)),
                      child: Image.asset(
                        Images.redcar,
                        height: 136.sp,
                        width: 122.sp,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 12.sp, left: 11.sp),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Get.isDarkMode
                                ? CommonColors.lightDark1
                                : CommonColors.whiteColor),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "MZ ZS EV",
                              style:
                                  Ts.semiBold14(CommonColors.primaryTextColor),
                            ),
                            const Hbox(4),
                            Text(
                              "By Royal cars",
                              style: Ts.regular10(
                                  const Color.fromRGBO(165, 167, 170, 1)),
                            ),
                            const Hbox(7),
                            Row(
                              children: [
                                Text(
                                  "Start date :  ",
                                  style: Get.isDarkMode
                                      ? Ts.medium12(CommonColors.whiteColor)
                                      : Ts.medium12(CommonColors.primaryGrey),
                                ),
                                Text(
                                  "10 Mar 2022",
                                  style: Get.isDarkMode
                                      ? Ts.medium12(CommonColors.whiteColor)
                                      : Ts.medium12(CommonColors.primaryGrey),
                                ),
                              ],
                            ),
                            const Hbox(4),
                            Text(
                              "₹ 1000/Per ${"day".tr}",
                              style: Get.isDarkMode
                                  ? Ts.regular11(CommonColors.whiteColor)
                                  : Ts.regular11(CommonColors.primaryGrey),
                            ),
                            const Hbox(10),
                            Row(
                              children: [
                                Text(
                                  "4 Days ",
                                  style: Get.isDarkMode
                                      ? Ts.semiBold11(CommonColors.whiteColor)
                                      : Ts.semiBold11(CommonColors.blackColor),
                                ),
                                SizedBox(width: 12.sp),
                                SizedBox(
                                  height: 21.sp,
                                  width: 60.sp,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      elevation: 0,
                                      shadowColor: Colors.transparent,
                                      side: const BorderSide(
                                        color: Color.fromRGBO(193, 218, 255, 1),
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      primary: const Color.fromRGBO(
                                          193, 218, 255, 1),
                                    ),
                                    onPressed: () {},
                                    child: Text("edit".tr,
                                        style: Ts.regular11(
                                            CommonColors.blueColor)),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                    top: 4.sp,
                    right: 0.0.sp,
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.cancel,
                          color: Get.isDarkMode
                              ? const Color.fromRGBO(196, 193, 193, 1)
                              : CommonColors.greyColor,
                        ))),
                Positioned(
                    top: 110.sp,
                    right: 17.0.sp,
                    child: Text(
                      '₹ 4000',
                      style: Ts.semiBold12(CommonColors.primaryTextColor),
                    )),
              ],
            ),
          ),
        ),
        const Hbox(14)
      ],
    );
  }
}
