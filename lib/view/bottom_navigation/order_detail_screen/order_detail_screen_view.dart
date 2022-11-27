import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:rento/components/images.dart';
import 'package:rento/controller/order_detail/order_detail_controller.dart';
import 'package:rento/utility_funtions.dart/navigator_helper.dart';
import 'package:rento/utility_funtions.dart/size.dart';
import 'package:rento/utility_funtions.dart/ts.dart';

import '../../../components/order_status_badge.dart';
import '../../../controller/order_detail/order_detail_controller.dart';
import '../../../helpers/common_colors.dart';
import '../../service_provider/common/comman_app_bar.dart';
import '../order_tracking/order_tracking_screen_view.dart';

class OrderDetailScreenView extends StatefulWidget {
  const OrderDetailScreenView({Key? key}) : super(key: key);

  @override
  State<OrderDetailScreenView> createState() => _OrderDetailScreenViewState();
}

class _OrderDetailScreenViewState extends State<OrderDetailScreenView> {
  final OrderDetailController _orderDetController =
      Get.isRegistered<OrderDetailController>()
          ? Get.find<OrderDetailController>()
          : Get.put(OrderDetailController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.isDarkMode
          ? CommonColors.darkBackgroundColor
          : CommonColors.bgColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.sp),
        child: CommonAppBar(
          tittle: 'MZ ZS EV',
          color: CommonColors.blackColor,
          elevation: Get.isDarkMode ? 0.5 : 0,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(22.sp),
              child: Column(
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
                              child: Text('${"orderID".tr} : 45414156464514231',
                                  style: Get.isDarkMode
                                      ? Ts.semiBold12(CommonColors.whiteColor)
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
                            const Divider(
                              color: CommonColors.greyColor,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'MZ ZS EV',
                                        style: Ts.semiBold14(
                                            CommonColors.mainColor),
                                      ),
                                      const Hbox(4),
                                      Text('By Royal cars',
                                          style: Ts.regular10(
                                              const Color(0xffA5A7AA))),
                                      const Hbox(12),
                                      Text(
                                        '₹ 1000/Per ${"day".tr}',
                                        style: Get.isDarkMode
                                            ? Ts.regular11(
                                                CommonColors.whiteColor)
                                            : Ts.regular11(
                                                const Color(0xff61666A)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
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
                  const Hbox(11),
                  Container(
                      height: 160.sp,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Get.isDarkMode
                              ? CommonColors.lightDark1
                              : CommonColors.whiteColor),
                      child: Padding(
                        padding: EdgeInsets.only(top: 23.sp, right: 20.sp),
                        child: Column(
                          children: [
                            IntrinsicHeight(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 23.sp),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "startDate".tr,
                                          style: Get.isDarkMode
                                              ? Ts.medium12(
                                                  CommonColors.greyDark6)
                                              : Ts.medium12(
                                                  const Color(0xff61666A)),
                                        ),
                                        const Hbox(14),
                                        Text(
                                          '10 Mar 2022',
                                          style: Get.isDarkMode
                                              ? Ts.semiBold16(
                                                  CommonColors.whiteColor)
                                              : Ts.semiBold16(
                                                  CommonColors.blackColor),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const VerticalDivider(
                                    color: CommonColors.greyColor,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "endDate".tr,
                                        style: Get.isDarkMode
                                            ? Ts.medium12(
                                                CommonColors.greyDark6)
                                            : Ts.medium12(
                                                const Color(0xff61666A)),
                                      ),
                                      const Hbox(14),
                                      Text(
                                        '12 Mar 2022',
                                        style: Get.isDarkMode
                                            ? Ts.semiBold16(
                                                CommonColors.whiteColor)
                                            : Ts.semiBold16(
                                                CommonColors.blackColor),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const Hbox(10),
                            const Divider(
                              color: CommonColors.greyColor,
                            ),
                            const Hbox(10),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Wbox(20),
                                Text(
                                  '4 Days',
                                  style: Ts.semiBold12(CommonColors.mainColor),
                                ),
                                const Wbox(10),
                                Text(
                                  '•',
                                  style: Ts.medium20(CommonColors.mainColor),
                                ),
                                const Wbox(10),
                                Text(
                                  '₹ 4000',
                                  style: Ts.semiBold12(CommonColors.mainColor),
                                ),
                              ],
                            ),
                            const Hbox(10),
                          ],
                        ),
                      )),
                  const Hbox(12),
                  Text(
                    "orderDet".tr,
                    style: Get.isDarkMode
                        ? Ts.semiBold12(CommonColors.whiteColor)
                        : Ts.semiBold12(const Color(0xff61666A)),
                  ),
                  const Hbox(12),
                  InkWell(
                    onTap: () {
                      Push.to(const OrderTrackingScreenView(), context);
                    },
                    child: Container(
                      height: 110.sp,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Get.isDarkMode
                              ? CommonColors.lightDark1
                              : CommonColors.whiteColor),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: 38.sp,
                            right: 35.sp,
                            top: 19.sp,
                            bottom: 28.sp),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 10.0.sp),
                                  child: const Icon(
                                    Icons.check_circle_rounded,
                                    color: CommonColors.mainColor,
                                  ),
                                ),
                                const Expanded(
                                  child: Divider(
                                    color: CommonColors.mainColor,
                                    thickness: 2,
                                  ),
                                ),
                                SvgPicture.asset(SvgImages.process),
                                const Expanded(
                                  child: Divider(
                                    color: Color(0xff707070),
                                    thickness: 1,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 12.0.sp),
                                  child: Get.isDarkMode
                                      ? const Icon(
                                          Icons.circle,
                                          color: CommonColors.whiteColor,
                                        )
                                      : const Icon(
                                          Icons.circle_outlined,
                                          color: Color(0xff707070),
                                        ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "confirmed".tr,
                                  style: Get.isDarkMode
                                      ? Ts.semiBold12(CommonColors.whiteColor)
                                      : Ts.semiBold12(const Color(0xff61666A)),
                                ),
                                Text(
                                  "proessing".tr,
                                  style: Get.isDarkMode
                                      ? Ts.semiBold12(CommonColors.whiteColor)
                                      : Ts.semiBold12(const Color(0xff61666A)),
                                ),
                                Text(
                                  "completed".tr,
                                  style: Get.isDarkMode
                                      ? Ts.semiBold12(CommonColors.greyDark6)
                                      : Ts.semiBold12(const Color(0xff61666A)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Hbox(9),
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
                      padding: EdgeInsets.only(
                          top: 13.sp, left: 20.sp, right: 31.sp, bottom: 10.sp),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: const Color(0xffAFFFDA)),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: 4.sp,
                                  left: 7.sp,
                                  right: 11.sp,
                                  bottom: 5.sp),
                              child: Text(
                                'Home',
                                style: Get.isDarkMode
                                    ? Ts.semiBold12(CommonColors.greyDark6)
                                    : Ts.semiBold12(CommonColors.mainColor),
                              ),
                            ),
                          ),
                          const Hbox(11),
                          Text(
                            'H. 7424 Street 545, Sector B254 Noida Uttar Pradesh 210301',
                            style: Get.isDarkMode
                                ? Ts.regular13(CommonColors.greyDark6)
                                : Ts.regular13(const Color(0xff61666A)),
                          ),
                          const Hbox(11),
                          Text(
                            '+91 9876543210',
                            style: Get.isDarkMode
                                ? Ts.regular13(CommonColors.greyDark6)
                                : Ts.regular13(const Color(0xff61666A)),
                          ),
                          const Hbox(10),
                        ],
                      ),
                    ),
                  ),
                  const Hbox(11),
                  Text(
                    "priceDetails".tr,
                    style: Get.isDarkMode
                        ? Ts.semiBold12(CommonColors.whiteColor)
                        : Ts.semiBold12(const Color(0xff61666A)),
                  ),
                  const Hbox(9),
                  Container(
                      height: 210.sp,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.sp),
                          color: Get.isDarkMode
                              ? CommonColors.lightDark1
                              : CommonColors.whiteColor),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Hbox(15),
                          Padding(
                            padding: EdgeInsets.only(right: 34.sp),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  '${"subTotal".tr} : 4000',
                                  style: Get.isDarkMode
                                      ? Ts.medium12(CommonColors.greyDark6)
                                      : Ts.medium12(const Color(0xff61666A)),
                                ),
                                Text(
                                  '${"securityCharges".tr} : 10000',
                                  style: Get.isDarkMode
                                      ? Ts.medium12(CommonColors.greyDark6)
                                      : Ts.medium12(const Color(0xff61666A)),
                                ),
                                Text(
                                  '${"tax".tr}  : 80',
                                  style: Get.isDarkMode
                                      ? Ts.medium12(CommonColors.greyDark6)
                                      : Ts.medium12(const Color(0xff61666A)),
                                ),
                                Text(
                                  '${"deliveryCharges".tr}  : 00',
                                  style: Get.isDarkMode
                                      ? Ts.medium12(CommonColors.greyDark6)
                                      : Ts.medium12(const Color(0xff61666A)),
                                ),
                                Text(
                                  '${"discount".tr}  : 00',
                                  style: Get.isDarkMode
                                      ? Ts.medium12(CommonColors.greyDark6)
                                      : Ts.medium12(const Color(0xff61666A)),
                                ),
                              ],
                            ),
                          ),
                          const Hbox(8),
                          Padding(
                            padding: EdgeInsets.only(right: 34.sp),
                            child: Text(
                              '${"payableAmount".tr}  : ₹ 14080',
                              style: Ts.semiBold14(CommonColors.greenColor),
                            ),
                          ),
                          const Hbox(5),
                          const Divider(
                            color: CommonColors.greyColor,
                          ),
                          const Hbox(5),
                          Padding(
                            padding: EdgeInsets.only(left: 20.sp),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                '• ${"paidBy".tr} : Debit card',
                                style: Get.isDarkMode
                                    ? Ts.regular13(CommonColors.greyDark6)
                                    : Ts.regular13(const Color(0xff61666A)),
                              ),
                            ),
                          ),
                        ],
                      )),
                  const Hbox(12),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Get.isDarkMode
                                ? CommonColors.mainColor
                                : Colors.transparent),
                        borderRadius: BorderRadius.circular(10.sp),
                        color: Get.isDarkMode
                            ? CommonColors.darkBackgroundColor
                            : CommonColors.whiteColor),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 25.sp, top: 19.sp, bottom: 20.sp, right: 21.sp),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "termsofUse".tr,
                            style: Get.isDarkMode
                                ? Ts.regular13(CommonColors.mainColor)
                                : Ts.regular13(const Color(0xff61666A)),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Get.isDarkMode
                                ? CommonColors.mainColor
                                : CommonColors.blackColor,
                            size: 15,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Get.isDarkMode
                  ? CommonColors.blackColor
                  : CommonColors.whiteColor,
              width: double.infinity,
              child: Column(
                children: [
                  const Hbox(11),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                        side: const BorderSide(
                          color: CommonColors.redColor,
                          width: 1.0,
                        ),
                      ),
                      primary: CommonColors.lightRedColor,
                    ),
                    onPressed: () {
                      showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.sp),
                            topRight: Radius.circular(20.sp),
                          )),
                          context: context,
                          builder: (context) {
                            return Padding(
                              padding: EdgeInsets.only(
                                  top: 26.sp,
                                  left: 30.sp,
                                  right: 29.sp,
                                  bottom: 10.sp),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "reasonforcancelorder".tr,
                                        style: Get.isDarkMode
                                            ? Ts.semiBold16(
                                                CommonColors.whiteColor)
                                            : Ts.semiBold16(
                                                CommonColors.blackColor),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Get.back();
                                        },
                                        child: Icon(
                                          Icons.cancel_rounded,
                                          color: Get.isDarkMode
                                              ? CommonColors.greyDark8
                                              : const Color(0xcffb6b9bb),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Hbox(39.sp),
                                  DropdownButtonHideUnderline(
                                    child: DropdownButton<String>(
                                      isExpanded: true,
                                      icon: Icon(
                                        Icons.arrow_drop_down_outlined,
                                        color: Get.isDarkMode
                                            ? CommonColors.whiteColor
                                            : CommonColors.blackColor,
                                      ),
                                      iconEnabledColor: CommonColors.mainColor,
                                      value: _orderDetController.currentReason,
                                      isDense: true,
                                      onChanged: (newValue) {
                                        setState(() {
                                          _orderDetController.currentReason =
                                              newValue;
                                        });
                                      },
                                      items: _orderDetController.reason
                                          .map((String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(
                                            value,
                                            style: Ts.semiBold16(Get.isDarkMode
                                                ? CommonColors.whiteColor
                                                : CommonColors.blackColor),
                                          ),
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                  const Hbox(10),
                                  const Divider(
                                    color: CommonColors.greyColor,
                                  ),
                                  const Hbox(15),
                                  Text(
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sed imperdiet magna, ac laoreet lectus. Ut ultrices urna a orci blandit scelerisque. Praesent tortor nisl, finibus at faucibus id, pellentesque eu dui. Proin lobortis augue vitae massa feugiat hendrerit vitae eu ligula. Etiam eget magna nec elit rhoncus maximus varius in elit.',
                                    style: Get.isDarkMode
                                        ? Ts.regular14(CommonColors.greyDark9)
                                        : Ts.regular14(CommonColors.greyColor1),
                                  ),
                                  const Hbox(10),
                                  SizedBox(
                                    height: 60.sp,
                                    width: double.infinity,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50.0),
                                          side: const BorderSide(
                                            color: CommonColors.redColor,
                                            width: 1.0,
                                          ),
                                        ),
                                        primary: CommonColors.lightRedColor,
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        "cancelorder".tr,
                                        style: Ts.semiBold13(
                                            CommonColors.redColor),
                                      ),
                                    ),
                                  ),
                                  const Hbox(10),
                                ],
                              ),
                            );
                          });
                    },
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: 16.sp, bottom: 16.sp, left: 41.sp, right: 41.sp),
                      child: Text("cancelorder".tr,
                          style: Ts.semiBold13(
                            CommonColors.redColor,
                          )),
                    ),
                  ),
                  const Hbox(16),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 25.sp, right: 25.sp, bottom: 18.sp),
                    child: Container(
                      color: Get.isDarkMode
                          ? CommonColors.lightDark1
                          : CommonColors.lightRedColor,
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: 30.sp,
                            right: 30.sp,
                            top: 10.sp,
                            bottom: 15.sp),
                        child: Center(
                          child: Text(
                            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry'
                            's',
                            style: Get.isDarkMode
                                ? Ts.regular11(CommonColors.greyDark6)
                                : Ts.regular11(CommonColors.redColor),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
