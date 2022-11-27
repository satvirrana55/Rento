import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rento/components/buttons.dart';
import 'package:rento/components/images.dart';
import 'package:rento/controller/confirm_screen/confirm_controller.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/themes/themes.dart';
import 'package:rento/utility_funtions.dart/size.dart';

import '../../../../utility_funtions.dart/navigator_helper.dart';
import '../../../../utility_funtions.dart/ts.dart';
import '../../../add_new_card.dart';

class ConfirmScreenView extends StatefulWidget {
  const ConfirmScreenView({Key? key}) : super(key: key);

  @override
  State<ConfirmScreenView> createState() => _ConfirmScreenViewState();
}

class _ConfirmScreenViewState extends State<ConfirmScreenView> {
  final ConfirmController _confirmController =
      Get.isRegistered<ConfirmController>()
          ? Get.find<ConfirmController>()
          : Get.put(ConfirmController());
  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Get.put(ThemeProvider());

    return Scaffold(
      backgroundColor: Get.isDarkMode
          ? CommonColors.darkBackgroundColor
          : const Color(0xffF3F3F3),
      appBar: AppBar(
        elevation: 0.4,
        shadowColor: CommonColors.whiteColor,
        backgroundColor: Get.isDarkMode
            ? CommonColors.darkBackgroundColor
            : CommonColors.whiteColor,
        automaticallyImplyLeading: true,
        leading: Icon(Icons.arrow_back,
            color: Get.isDarkMode
                ? CommonColors.whiteColor
                : CommonColors.blackColor),
        title: Text(
          "confirmPayment".tr,
          style: Get.isDarkMode
              ? Ts.semiBold18(CommonColors.whiteColor)
              : Ts.semiBold18(CommonColors.blackColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                      )),
                  child: Padding(
                    padding: EdgeInsets.only(top: 20.sp),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20.sp, right: 20.sp),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex: 2,
                                child: Text(
                                  overflow: TextOverflow.clip,
                                  maxLines: 2,
                                  softWrap: true,
                                  "savedCards".tr,
                                  style: Get.isDarkMode
                                      ? Ts.semiBold15(CommonColors.whiteColor)
                                      : Ts.semiBold15(const Color(0xff373E44)),
                                ),
                              ),
                              const Wbox(5),
                              Expanded(
                                flex: 2,
                                child: InkWell(
                                  onTap: () {
                                    Push.to(const AddNewCard(), context);
                                  },
                                  child: Text(
                                    textAlign: TextAlign.right,
                                    overflow: TextOverflow.clip,
                                    maxLines: 2,
                                    softWrap: true,
                                    "addNewCard".tr,
                                    style:
                                        Ts.semiBold15(CommonColors.mainColor),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Hbox(22),
                        SizedBox(
                          height: 181,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemCount: 4,
                              itemBuilder: (ctx, i) {
                                return Stack(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 20.sp, right: 10.sp),
                                      child: Image.asset(
                                        Images.card,
                                      ),
                                    ),
                                    Positioned(
                                        top: 104.sp,
                                        left: 55.sp,
                                        right: 40.sp,
                                        bottom: 0.0,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'XXXX XXXX XXXX 2454',
                                              style: Ts.regular18(
                                                  CommonColors.whiteColor),
                                            ),
                                            const Hbox(5),
                                            Text(
                                              '01 / 24',
                                              style: Ts.semiBold12(
                                                  CommonColors.whiteColor),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "debitCard".tr,
                                                  style: Ts.medium14(
                                                      CommonColors.mainColor),
                                                ),
                                                Checkbox(
                                                    value: _confirmController
                                                        .selectCard,
                                                    checkColor:
                                                        CommonColors.whiteColor,
                                                    activeColor:
                                                        CommonColors.mainColor,
                                                    onChanged: (value) {
                                                      setState(() {
                                                        _confirmController
                                                                .selectCard =
                                                            !_confirmController
                                                                .selectCard;
                                                      });
                                                    }),
                                              ],
                                            ),
                                          ],
                                        ))
                                  ],
                                );
                              }),
                        ),
                        const Hbox(31),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 22.sp, right: 22.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Hbox(18),
                  Text(
                    "wallets".tr,
                    style: Get.isDarkMode
                        ? Ts.semiBold16(CommonColors.whiteColor)
                        : Ts.semiBold16(const Color(0xff373E44)),
                  ),
                  const Hbox(9),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 82.sp,
                        width: 125.sp,
                        decoration: BoxDecoration(
                          color: CommonColors.whiteColor,
                          borderRadius: BorderRadius.circular(15.sp),
                        ),
                        child: Image.asset(Images.gpay),
                      ),
                      Container(
                        height: 82.sp,
                        width: 125.sp,
                        decoration: BoxDecoration(
                          color: CommonColors.whiteColor,
                          borderRadius: BorderRadius.circular(15.sp),
                        ),
                        child: Image.asset(
                          Images.paytm,
                          scale: 3.5,
                        ),
                      ),
                      Container(
                        height: 82.sp,
                        width: 125.sp,
                        decoration: BoxDecoration(
                          color: CommonColors.whiteColor,
                          borderRadius: BorderRadius.circular(15.sp),
                        ),
                        child: Image.asset(
                          Images.phonepay,
                          scale: 4,
                        ),
                      ),
                    ],
                  ),
                  const Hbox(13),
                  Text(
                    "totalPrice".tr,
                    style: Get.isDarkMode
                        ? Ts.semiBold16(CommonColors.whiteColor)
                        : Ts.semiBold16(const Color(0xff373E44)),
                  ),
                  const Hbox(11),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10.sp),
                    child: Container(
                        height: 220.sp,
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
                                        ? Ts.medium12(CommonColors.whiteColor)
                                        : Ts.medium12(const Color(0xff61666A)),
                                  ),
                                  const Hbox(7),
                                  Text(
                                    '${"securityCharges".tr} : 10000',
                                    style: Get.isDarkMode
                                        ? Ts.medium12(CommonColors.whiteColor)
                                        : Ts.medium12(const Color(0xff61666A)),
                                  ),
                                  const Hbox(7),
                                  Text(
                                    '${"tax".tr} : 80',
                                    style: Get.isDarkMode
                                        ? Ts.medium12(CommonColors.whiteColor)
                                        : Ts.medium12(const Color(0xff61666A)),
                                  ),
                                  const Hbox(7),
                                  Text(
                                    '${"deliveryCharges".tr} : 00',
                                    style: Get.isDarkMode
                                        ? Ts.medium12(CommonColors.whiteColor)
                                        : Ts.medium12(const Color(0xff61666A)),
                                  ),
                                  const Hbox(7),
                                  Text(
                                    '${"discount".tr} : 00',
                                    style: Get.isDarkMode
                                        ? Ts.medium12(CommonColors.whiteColor)
                                        : Ts.medium12(const Color(0xff61666A)),
                                  ),
                                ],
                              ),
                            ),
                            const Hbox(10),
                            const Divider(color: CommonColors.greyColor),
                            const Hbox(5),
                            Padding(
                              padding: EdgeInsets.only(right: 34.sp),
                              child: Text(
                                '${"payableAmount".tr} : ₹ 14080',
                                style: Ts.medium16(CommonColors.mainColor),
                              ),
                            ),
                            const Hbox(15),
                          ],
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 89,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Get.isDarkMode
                ? CommonColors.darkBackgroundColor
                : CommonColors.whiteColor,
            border: Border(
                top: BorderSide(
                    width: 0.5,
                    color: Get.isDarkMode
                        ? CommonColors.greyColor5
                        : Colors.white))),
        child: Padding(
          padding: EdgeInsets.only(
              left: 20.sp, right: 20.sp, top: 22.sp, bottom: 22.sp),
          child: BasicButton(
            width: double.infinity,
            textName: "continueButton".tr,
            onPressed: () {
              _confirmController.confirm();
            },
          ),
        ),
      ),
    );
  }
}
