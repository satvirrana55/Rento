import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rento/components/images.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/utility_funtions.dart/size.dart';
import 'package:rento/utility_funtions.dart/ts.dart';

class NewOrderDetailScreen extends StatefulWidget {
  const NewOrderDetailScreen({Key? key}) : super(key: key);

  @override
  State<NewOrderDetailScreen> createState() => _NewOrderDetailScreenState();
}

class _NewOrderDetailScreenState extends State<NewOrderDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "orderDet".tr,
          style: Get.isDarkMode
              ? Ts.semiBold12(CommonColors.whiteColor)
              : Ts.semiBold12(const Color(0xff61666A)),
        ),
        const Hbox(12),
        Stack(
          children: [
            Container(
              height: 171.sp,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Get.isDarkMode
                      ? CommonColors.lightDark1
                      : CommonColors.whiteColor),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Hbox(16),
                  Padding(
                    padding: const EdgeInsets.only(left: 14.0),
                    child: Text('${"orderDet".tr}: 45414156464514231',
                        style: Get.isDarkMode
                            ? Ts.semiBold12(CommonColors.lightGrey13)
                            : Ts.semiBold12(const Color(0xff8497A2))),
                  ),
                  const Hbox(2),
                  Padding(
                    padding: const EdgeInsets.only(left: 14.0),
                    child: Text('${"orderDate".tr} : 09 Mar 2022',
                        style: Get.isDarkMode
                            ? Ts.regular10(CommonColors.greyDark5)
                            : Ts.regular10(const Color(0xffA7AEB2))),
                  ),
                  const Hbox(5),
                  Divider(
                    color: Get.isDarkMode
                        ? CommonColors.greyDark3
                        : CommonColors.primaryLightGrey2,
                  ),
                  const Hbox(5),
                  Padding(
                    padding: const EdgeInsets.only(left: 14.0),
                    child: Row(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              Images.redcar,
                              height: 81.sp,
                              width: 84.sp,
                            )),
                        const Wbox(10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'MZ ZS EV',
                              style: Ts.semiBold14(CommonColors.mainColor),
                            ),
                            const Hbox(4),
                            Text('By Royal cars',
                                style: Ts.regular10(const Color(0xffA5A7AA))),
                            const Hbox(12),
                            Text(
                              '₹ 1000/Per ${"day".tr}',
                              style: Get.isDarkMode
                                  ? Ts.regular11(CommonColors.whiteColor)
                                  : Ts.regular11(const Color(0xff61666A)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        const Hbox(11),
        Container(
            height: 155.sp,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Get.isDarkMode
                    ? CommonColors.lightDark1
                    : CommonColors.whiteColor),
            child: Padding(
              padding: EdgeInsets.only(
                top: 23.sp,
              ),
              child: Column(
                children: [
                  IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 0.sp),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "startDate".tr,
                                style: Get.isDarkMode
                                    ? Ts.medium12(CommonColors.greyDark5)
                                    : Ts.medium12(const Color(0xff61666A)),
                              ),
                              const Hbox(14),
                              Text(
                                '10 Mar 2022',
                                style: Get.isDarkMode
                                    ? Ts.semiBold16(CommonColors.whiteColor)
                                    : Ts.semiBold16(CommonColors.blackColor),
                              ),
                            ],
                          ),
                        ),
                        VerticalDivider(
                          color: Get.isDarkMode
                              ? CommonColors.greyDark3
                              : CommonColors.primaryLightGrey2,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "endDate".tr,
                              style: Get.isDarkMode
                                  ? Ts.medium12(CommonColors.greyDark5)
                                  : Ts.medium12(const Color(0xff61666A)),
                            ),
                            const Hbox(14),
                            Text(
                              '12 Mar 2022',
                              style: Get.isDarkMode
                                  ? Ts.semiBold16(CommonColors.whiteColor)
                                  : Ts.semiBold16(CommonColors.blackColor),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Hbox(10),
                  Divider(
                    color: Get.isDarkMode
                        ? CommonColors.greyDark3
                        : CommonColors.primaryLightGrey2,
                  ),
                  const Hbox(10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '4 Days',
                        style: Ts.semiBold12(CommonColors.primaryTextColor),
                      ),
                      SizedBox(
                        width: 22.sp,
                      ),
                      Container(
                        height: 4,
                        width: 4,
                        decoration: BoxDecoration(
                          color: CommonColors.primaryTextColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      SizedBox(
                        width: 22.sp,
                      ),
                      Text(
                        '₹ 4000',
                        style: Ts.semiBold12(CommonColors.primaryTextColor),
                      ),
                    ],
                  ),
                ],
              ),
            )),
        const Hbox(8),
        Text(
          "deliveryAddress".tr,
          style: Get.isDarkMode
              ? Ts.semiBold12(CommonColors.whiteColor)
              : Ts.semiBold12(const Color(0xff61666A)),
        ),
        const Hbox(12),
        Container(
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Get.isDarkMode
                    ? CommonColors.lightDark1
                    : CommonColors.whiteColor),
            child: Padding(
              padding: EdgeInsets.only(top: 17.sp, right: 31.sp, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 26.sp,
                    width: 54.sp,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: CommonColors.primaryLightGreen1),
                    child: Center(
                      child: Text("home".tr,
                          style: Ts.semiBold12(CommonColors.primaryTextColor)),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Hbox(11),
                      Text(
                        "H.7424 Street 545, Sector B254 Noida Uttar Pradesh 210301",
                        style: Get.isDarkMode
                            ? Ts.regular13(CommonColors.whiteColor)
                            : Ts.regular13(CommonColors.primaryGrey),
                      ),
                      const Hbox(11),
                      Text(
                        "+91 9876543210",
                        style: Get.isDarkMode
                            ? Ts.regular13(CommonColors.whiteColor)
                            : Ts.regular13(CommonColors.primaryGrey),
                      ),
                      const Hbox(10),
                    ],
                  ),
                ],
              ),
            )),
        const Hbox(10),
        Text(
          "priceDetails".tr,
          style: Get.isDarkMode
              ? Ts.semiBold12(CommonColors.whiteColor)
              : Ts.semiBold12(const Color(0xff61666A)),
        ),
        const Hbox(12),
        Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Get.isDarkMode
                    ? CommonColors.lightDark1
                    : CommonColors.whiteColor),
            child: Padding(
              padding: EdgeInsets.only(
                top: 23.sp,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 23.sp, right: 20.sp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "${"subTotal".tr} : 4000",
                          style: Get.isDarkMode
                              ? Ts.regular13(CommonColors.whiteColor)
                              : Ts.regular13(CommonColors.primaryGrey),
                        ),
                        const Hbox(2),
                        Text(
                          "${"tax".tr} : 80",
                          style: Get.isDarkMode
                              ? Ts.regular13(CommonColors.whiteColor)
                              : Ts.regular13(CommonColors.primaryGrey),
                        ),
                        const Hbox(2),
                        Text(
                          "${"deliveryCharges".tr} : 00",
                          style: Get.isDarkMode
                              ? Ts.regular13(CommonColors.whiteColor)
                              : Ts.regular13(CommonColors.primaryGrey),
                        ),
                        const Hbox(2),
                        Text(
                          "${"discount".tr} : 00",
                          style: Get.isDarkMode
                              ? Ts.regular13(CommonColors.whiteColor)
                              : Ts.regular13(CommonColors.primaryGrey),
                        ),
                        const Hbox(2),
                        Text(
                          "${"payableAmount".tr} : ₹4080",
                          style: Ts.semiBold14(CommonColors.primaryTextColor),
                        ),
                        const Hbox(10),
                        const Divider(height: 0, color: Colors.transparent)
                      ],
                    ),
                  ),
                  Divider(
                    height: 1,
                    color: Get.isDarkMode
                        ? CommonColors.greyDark3
                        : CommonColors.primaryLightGrey2,
                  ),
                  const Hbox(12),
                  Padding(
                    padding: EdgeInsets.only(left: 23.sp, right: 20.sp),
                    child: Row(
                      children: [
                        Container(
                          height: 4,
                          width: 4,
                          decoration: BoxDecoration(
                            color: CommonColors.primaryGrey,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          "${"payment".tr} : COD",
                          style: Get.isDarkMode
                              ? Ts.regular13(CommonColors.whiteColor)
                              : Ts.regular13(CommonColors.primaryGrey),
                        ),
                      ],
                    ),
                  ),
                  const Hbox(13),
                ],
              ),
            )),
        const Hbox(8),
        Text(
          "userDetails".tr,
          style: Get.isDarkMode
              ? Ts.semiBold12(CommonColors.whiteColor)
              : Ts.semiBold12(const Color(0xff61666A)),
        ),
        const Hbox(9),
        Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Get.isDarkMode
                    ? CommonColors.lightDark1
                    : CommonColors.whiteColor),
            child: Padding(
              padding: EdgeInsets.only(
                top: 23.sp,
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 24.sp),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 20.sp,
                          backgroundColor: CommonColors.blackColor,
                          backgroundImage: const AssetImage(Images.mask),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Get.isDarkMode
                                  ? CommonColors.lightDark1
                                  : CommonColors.whiteColor),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 14.0),
                                child: Text('Aman kumar',
                                    style: Get.isDarkMode
                                        ? Ts.semiBold14(CommonColors.whiteColor)
                                        : Ts.semiBold14(
                                            CommonColors.blackColor)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 14.0),
                                child: Text('amankumar@gmmail.com',
                                    style: Get.isDarkMode
                                        ? Ts.regular10(CommonColors.greyDark5)
                                        : Ts.regular10(
                                            const Color(0xff8497A2))),
                              ),
                              Divider(
                                color: Get.isDarkMode
                                    ? CommonColors.greyDark3
                                    : CommonColors.primaryLightGrey2,
                              ),
                              const Hbox(25),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
