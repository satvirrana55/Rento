import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:rento/components/order_status_badge.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/utility_funtions.dart/size.dart';
import 'package:rento/utility_funtions.dart/ts.dart';
import 'package:rento/view/bottom_navigation/order_detail_screen/order_detail_screen_view.dart';

import '../../../components/images.dart';
import '../home/cart_screen/cart_screen_view.dart';

class OrdersScreenView extends StatefulWidget {
  const OrdersScreenView({Key? key}) : super(key: key);

  @override
  State<OrdersScreenView> createState() => _OrdersScreenViewState();
}

class _OrdersScreenViewState extends State<OrdersScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.isDarkMode
          ? CommonColors.darkBackgroundColor
          : const Color(0xffF3F3F3),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        toolbarHeight: 100.sp,
        title: Padding(
          padding: EdgeInsets.only(top: 15.sp),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 20.sp,
                backgroundColor: CommonColors.whiteColor,
                backgroundImage: const AssetImage(Images.mask),
              ),
              SvgPicture.asset(
                SvgImages.rento,
                height: 43.sp,
                width: 108.sp,
              ),
              InkWell(
                onTap: () {
                  Get.to(const CartScreenView());
                },
                child: Icon(
                  Icons.shopping_cart_rounded,
                  size: 25.sp,
                ),
              ),
            ],
          ),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              color: CommonColors.mainColor),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 14.sp, bottom: 14.sp),
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: 4,
            itemBuilder: (ctx, i) {
              return Padding(
                padding: EdgeInsets.only(
                    left: 20.sp, right: 20.sp, top: 6.sp, bottom: 6.sp),
                child: InkWell(
                  onTap: () {
                    Get.to(() => const OrderDetailScreenView());
                  },
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.sp),
                          color: Get.isDarkMode
                              ? CommonColors.lightDark1
                              : CommonColors.whiteColor,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(20.sp),
                                child: Image.asset(
                                  Images.redcar,
                                  height: 136.sp,
                                  width: 122.sp,
                                  fit: BoxFit.cover,
                                )),
                            const Wbox(11),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Hbox(6),
                                Text(
                                  'MZ ZS EV',
                                  style: Ts.semiBold14(CommonColors.mainColor),
                                ),
                                const Hbox(2),
                                Text(
                                  'By Royal cars',
                                  style: Get.isDarkMode
                                      ? Ts.regular10(CommonColors.greyDark1)
                                      : Ts.regular10(const Color(0xffA5A7AA)),
                                ),
                                const Hbox(3),
                                Text(
                                  '${"startDate".tr} : 10 Mar 2022',
                                  style: Get.isDarkMode
                                      ? Ts.medium12(CommonColors.whiteColor)
                                      : Ts.medium12(const Color(0xff61666A)),
                                ),
                                const Hbox(4),
                                Text(
                                  '₹ 1000/Per ${"day".tr}',
                                  style: Get.isDarkMode
                                      ? Ts.regular10(CommonColors.whiteColor)
                                      : Ts.regular10(const Color(0xff61666A)),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '4 Days',
                                      style:
                                          Ts.semiBold11(CommonColors.mainColor),
                                    ),
                                    Text(
                                      ' • ',
                                      style: Ts.bold20(CommonColors.mainColor),
                                    ),
                                    Text(
                                      '₹ 4000',
                                      style:
                                          Ts.semiBold11(CommonColors.mainColor),
                                    ),
                                  ],
                                ),
                                Text(
                                  '${"orderID".tr} : 451654165415152515',
                                  style: Get.isDarkMode
                                      ? Ts.regular10(CommonColors.greyDark1)
                                      : Ts.regular10(const Color(0xffA5A7AA)),
                                ),
                                const Hbox(8),
                              ],
                            ),
                          ]),
                        ),
                      ),
                      Positioned(
                        top: 20.sp,
                        //left: 200.sp,
                        right: 0.0,
                        child: OrderStatusBage(
                          textName: "active".tr,
                          color: CommonColors.mainColor,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
