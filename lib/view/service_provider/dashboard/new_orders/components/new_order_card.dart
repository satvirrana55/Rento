import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rento/components/images.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/utility_funtions.dart/size.dart';
import 'package:rento/utility_funtions.dart/ts.dart';

class NewOrdersCard extends StatefulWidget {
  const NewOrdersCard({Key? key}) : super(key: key);

  @override
  State<NewOrdersCard> createState() => _NewOrdersCardState();
}

class _NewOrdersCardState extends State<NewOrdersCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color:
            Get.isDarkMode ? CommonColors.lightDark1 : CommonColors.whiteColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: CircleAvatar(
                radius: 35.sp,
                backgroundColor: CommonColors.blackColor,
                backgroundImage: const AssetImage(Images.mask),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Aman kumar',
                    style: Get.isDarkMode
                        ? Ts.semiBold16(CommonColors.lightGrey10)
                        : Ts.semiBold16(CommonColors.blackColor),
                  ),
                  Text(
                    '${"orderID".tr} : 45414156464514231',
                    style: Get.isDarkMode
                        ? Ts.semiBold12(CommonColors.whiteColor)
                        : Ts.semiBold12(const Color(0xffA5A7AA)),
                  ),
                ],
              ),
              subtitle: Text(
                '${"orderDate".tr} : 09 Mar 2022',
                style: Get.isDarkMode
                    ? Ts.regular10(CommonColors.lightGrey9)
                    : Ts.regular10(const Color(0xffA5A7AA)),
              ),
            ),
            Divider(
              height: 1,
              color: Get.isDarkMode
                  ? CommonColors.greyDark3
                  : CommonColors.primaryLightGrey2,
            ),
            const Hbox(10),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Row(
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
                  const SizedBox(
                    width: 14,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "MZ ZS EV",
                        style: Get.isDarkMode
                            ? Ts.semiBold14(CommonColors.greyDark10)
                            : Ts.semiBold14(CommonColors.primaryTextColor),
                      ),
                      const Hbox(10),
                      Text(
                        "₹ 1000/Per ${"day".tr}",
                        style: Get.isDarkMode
                            ? Ts.regular11(CommonColors.whiteColor)
                            : Ts.regular11(CommonColors.primaryGrey),
                      ),
                      Row(
                        children: [
                          Text(
                            "${"startDate".tr} :  ",
                            style: Get.isDarkMode
                                ? Ts.medium10(CommonColors.greyDark10)
                                : Ts.medium10(CommonColors.primaryGrey),
                          ),
                          Text(
                            "10 Mar 2022",
                            style: Get.isDarkMode
                                ? Ts.semiBold10(CommonColors.whiteColor)
                                : Ts.semiBold10(CommonColors.primaryDark1),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "${"endDate".tr} :   ",
                            style: Get.isDarkMode
                                ? Ts.medium10(CommonColors.greyDark10)
                                : Ts.medium10(CommonColors.primaryGrey),
                          ),
                          Text(
                            " 12 Mar 2022",
                            style: Get.isDarkMode
                                ? Ts.semiBold10(CommonColors.whiteColor)
                                : Ts.semiBold10(CommonColors.primaryDark1),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "4 Days",
                            style: Get.isDarkMode
                                ? Ts.semiBold12(CommonColors.whiteColor)
                                : Ts.semiBold12(CommonColors.primaryTextColor),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Container(
                            height: 4,
                            width: 4,
                            decoration: BoxDecoration(
                              color: Get.isDarkMode
                                  ? CommonColors.whiteColor
                                  : CommonColors.primaryTextColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            "₹ 4080",
                            style: Get.isDarkMode
                                ? Ts.semiBold12(CommonColors.whiteColor)
                                : Ts.semiBold12(CommonColors.primaryTextColor),
                          ),
                        ],
                      ),
                      Text(
                        "${"payment".tr} : Cash on delivery",
                        style: Get.isDarkMode
                            ? Ts.regular12(CommonColors.greyDark10)
                            : Ts.regular12(CommonColors.primaryGrey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Hbox(10),
            Divider(
              height: 1,
              color: Get.isDarkMode
                  ? CommonColors.greyDark3
                  : CommonColors.primaryLightGrey2,
            ),
            const Hbox(10),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 61),
              child: Text(
                "H. 7424 Street 545, Sector B254 Noida Uttar Pradesh 210301",
                style: Get.isDarkMode
                    ? Ts.regular12(CommonColors.greyDark11)
                    : Ts.regular12(CommonColors.primaryGrey),
              ),
            ),
            const Hbox(9),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Text(
                "+91 9876543210",
                style: Get.isDarkMode
                    ? Ts.regular12(CommonColors.greyDark11)
                    : Ts.regular12(CommonColors.primaryGrey),
              ),
            ),
            const Hbox(10),
            Divider(
              height: 1,
              color: Get.isDarkMode
                  ? CommonColors.greyDark3
                  : CommonColors.primaryLightGrey2,
            ),
            const Hbox(10),
            Padding(
              padding: const EdgeInsets.only(left: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 48.sp,
                    width: MediaQuery.of(context).size.width * .27,
                    decoration: BoxDecoration(
                      color: CommonColors.blueColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextButton(
                      child: Text(
                        "call".tr,
                        style: Ts.semiBold14(CommonColors.whiteColor),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    height: 48.sp,
                    width: MediaQuery.of(context).size.width * .27,
                    decoration: BoxDecoration(
                      color: CommonColors.primaryRed,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextButton(
                      child: Text(
                        "cancel".tr,
                        style: Ts.semiBold14(CommonColors.whiteColor),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    height: 48.sp,
                    width: MediaQuery.of(context).size.width * .27,
                    decoration: BoxDecoration(
                      color: CommonColors.primaryLightGreen,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextButton(
                      child: Text(
                        "accept".tr,
                        style: Ts.semiBold14(CommonColors.whiteColor),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            const Hbox(10),
          ],
        ),
      ),
    );
  }
}
