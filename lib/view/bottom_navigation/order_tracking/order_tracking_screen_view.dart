/* import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rento/utility_funtions.dart/size.dart';
import 'package:rento/utility_funtions.dart/ts.dart';

import '../../components/colors.dart';
import '../service_provider/common/comman_app_bar.dart';

class OrderTracking extends StatefulWidget {
  const OrderTracking({Key? key}) : super(key: key);

  final String title = "Stepper Demo";

  @override
  OrderTrackingState createState() => OrderTrackingState();
}

class OrderTrackingState extends State<OrderTracking> {
  int current_step = 0;

  List<Step> steps = [
    Step(
      title: Text(
        'Confirmed',
        style: Ts.semiBold12(const Color(0xff61666A)),
      ),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '09 Mar 2022',
            style: Ts.medium12(const Color(0xffB5B9BC)),
          ),
          const Hbox(5),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sed imperdiet magna,',
            style: Ts.regular10(const Color(0xffBFC1C2)),
          ),
        ],
      ),
      isActive: true,
    ),
    Step(
      title: Text(
        'Processing',
        style: Ts.semiBold12(const Color(0xff61666A)),
      ),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '09 Mar 2022',
            style: Ts.medium12(const Color(0xffB5B9BC)),
          ),
          const Hbox(5),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sed imperdiet magna,',
            style: Ts.regular10(const Color(0xffBFC1C2)),
          ),
        ],
      ),
      isActive: true,
    ),
    Step(
      title: Text(
        'Using on rent',
        style: Ts.semiBold12(const Color(0xff61666A)),
      ),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '09 Mar 2022',
            style: Ts.medium12(const Color(0xffB5B9BC)),
          ),
          const Hbox(5),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sed imperdiet magna,',
            style: Ts.regular10(const Color(0xffBFC1C2)),
          ),
        ],
      ),
      isActive: true,
    ),
    Step(
      title: Text(
        'Renting period completed',
        style: Ts.semiBold12(const Color(0xff61666A)),
      ),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '09 Mar 2022',
            style: Ts.medium12(const Color(0xffB5B9BC)),
          ),
          const Hbox(5),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sed imperdiet magna,',
            style: Ts.regular10(const Color(0xffBFC1C2)),
          ),
          const Hbox(5),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.sp),
              border: Border.all(color: mainColor),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                  left: 14.sp, right: 14.sp, top: 11.sp, bottom: 11.sp),
              child: Text(
                'Renew Plan',
                style: Ts.medium12(mainColor),
              ),
            ),
          ),
        ],
      ),
      isActive: true,
    ),
    Step(
        title: Text(
          'Return to vendor',
          style: Ts.semiBold12(const Color(0xff61666A)),
        ),
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '09 Mar 2022',
              style: Ts.medium12(const Color(0xffB5B9BC)),
            ),
            const Hbox(5),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sed imperdiet magna,',
              style: Ts.regular10(const Color(0xffBFC1C2)),
            ),
          ],
        ),
        isActive: true,
        state: StepState.complete),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.sp),
        child: const CommonAppBar(
          tittle: 'Order Tracking',
          color: CommonColors.blackColor,
        ),
      ),
      // Body
      body: Padding(
        padding: EdgeInsets.only(
            left: 20.sp, right: 20.sp, top: 17.sp, bottom: 16.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Order Status',
              style: Ts.semiBold12(const Color(0xff61666A)),
            ),
            const Hbox(13),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.sp),
                  color: CommonColors.whiteColor),
              child: Padding(
                padding: EdgeInsets.all(15.sp),
                child: Theme(
                  data: ThemeData(
                    colorScheme: Theme.of(context)
                        .colorScheme
                        .copyWith(primary: mainColor),
                  ),
                  child: Stepper(
                    controlsBuilder: (context, _) {
                      return const SizedBox();
                    },
                    currentStep: current_step,
                    steps: steps,
                    type: StepperType.vertical,
                    onStepTapped: (step) {
                      setState(() {
                        current_step = step;
                      });
                    },
                  ),
                ),
              ),
            ),
            const Hbox(10),
          ],
        ),
      ),
    );
  }
}
 */

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:rento/components/images.dart';

import '../../../helpers/common_colors.dart';
import '../../../utility_funtions.dart/size.dart';
import '../../../utility_funtions.dart/ts.dart';
import '../../service_provider/common/comman_app_bar.dart';

class OrderTrackingScreenView extends StatefulWidget {
  const OrderTrackingScreenView({Key? key}) : super(key: key);

  @override
  State<OrderTrackingScreenView> createState() =>
      _OrderTrackingScreenViewState();
}

class _OrderTrackingScreenViewState extends State<OrderTrackingScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.isDarkMode
          ? CommonColors.darkBackgroundColor
          : CommonColors.bgColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.sp),
        child: CommonAppBar(
          tittle: "orderTracking".tr,
          color: CommonColors.blackColor,
          elevation: Get.isDarkMode ? 0.5 : 0,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              left: 20.sp, right: 20.sp, top: 17.sp, bottom: 16.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "orderStatus".tr,
                style: Get.isDarkMode
                    ? Ts.semiBold12(CommonColors.whiteColor)
                    : Ts.semiBold12(const Color(0xff61666A)),
              ),
              const Hbox(13),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.sp),
                    color: Get.isDarkMode
                        ? CommonColors.lightDark1
                        : CommonColors.whiteColor),
                child: Padding(
                  padding: EdgeInsets.all(15.sp),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          const Icon(
                            Icons.circle,
                            color: CommonColors.mainColor,
                          ),
                          SizedBox(
                              height: 120.sp,
                              child: const VerticalDivider(
                                  color: CommonColors.greenColor,
                                  thickness: 3.5)),
                          SvgPicture.asset(SvgImages.process2),
                          SizedBox(
                              height: 120.sp,
                              child: const VerticalDivider(
                                  color: CommonColors.greenColor,
                                  thickness: 3.5)),
                          SvgPicture.asset(SvgImages.process3),
                          SizedBox(
                            height: 120.sp,
                            child: const VerticalDivider(
                                color: Color(0xffBCBCBC), thickness: 1.5),
                          ),
                          Get.isDarkMode
                              ? const Icon(
                                  Icons.circle,
                                  color: CommonColors.whiteColor,
                                )
                              : const Icon(
                                  Icons.circle_outlined,
                                  color: Color(0xffBCBCBC),
                                ),
                          SizedBox(
                            height: 120.sp,
                            child: const VerticalDivider(
                                color: Color(0xffBCBCBC), thickness: 1.5),
                          ),
                          Get.isDarkMode
                              ? const Icon(
                                  Icons.circle,
                                  color: CommonColors.whiteColor,
                                )
                              : const Icon(
                                  Icons.circle_outlined,
                                  color: Color(0xffBCBCBC),
                                ),
                        ],
                      ),
                      const Wbox(16),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(right: 15.sp),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "confirmed".tr,
                                style: Get.isDarkMode
                                    ? Ts.semiBold12(CommonColors.whiteColor)
                                    : Ts.semiBold12(CommonColors.greyColor2),
                              ),
                              const Hbox(2),
                              Text(
                                '09 Mar 2022',
                                style: Ts.medium12(CommonColors.greyColor3),
                              ),
                              const Hbox(5),
                              Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sed imperdiet magna,',
                                style: Get.isDarkMode
                                    ? Ts.regular10(CommonColors.greyDark10)
                                    : Ts.regular10(CommonColors.greyColor3),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                softWrap: false,
                              ),
                              const Hbox(60),
                              Text(
                                "proessing".tr,
                                style: Get.isDarkMode
                                    ? Ts.semiBold12(CommonColors.whiteColor)
                                    : Ts.semiBold12(CommonColors.greyColor2),
                              ),
                              const Hbox(2),
                              Text(
                                '09 Mar 2022',
                                style: Get.isDarkMode
                                    ? Ts.medium12(CommonColors.greyDark11)
                                    : Ts.medium12(CommonColors.greyColor3),
                              ),
                              const Hbox(5),
                              Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sed imperdiet magna,',
                                style: Get.isDarkMode
                                    ? Ts.regular10(CommonColors.greyDark10)
                                    : Ts.regular10(CommonColors.greyColor3),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                softWrap: false,
                              ),
                              const Hbox(70),
                              Text(
                                "usingonrent".tr,
                                style: Get.isDarkMode
                                    ? Ts.semiBold12(CommonColors.whiteColor)
                                    : Ts.semiBold12(CommonColors.greyColor2),
                              ),
                              const Hbox(2),
                              Text(
                                '09 Mar 2022',
                                style: Get.isDarkMode
                                    ? Ts.medium12(CommonColors.greyDark11)
                                    : Ts.medium12(CommonColors.greyColor3),
                              ),
                              const Hbox(5),
                              Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sed imperdiet magna,',
                                style: Get.isDarkMode
                                    ? Ts.regular10(CommonColors.greyDark10)
                                    : Ts.regular10(CommonColors.greyColor3),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                softWrap: false,
                              ),
                              const Hbox(70),
                              Text(
                                "rentingperiodcompleted".tr,
                                style: Get.isDarkMode
                                    ? Ts.semiBold12(CommonColors.whiteColor)
                                    : Ts.semiBold12(CommonColors.greyColor2),
                              ),
                              const Hbox(2),
                              Text(
                                '09 Mar 2022',
                                style: Get.isDarkMode
                                    ? Ts.medium12(CommonColors.greyDark11)
                                    : Ts.medium12(CommonColors.greyColor3),
                              ),
                              const Hbox(5),
                              Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sed imperdiet magna,',
                                style: Get.isDarkMode
                                    ? Ts.regular10(CommonColors.greyDark10)
                                    : Ts.regular10(CommonColors.greyColor3),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                softWrap: false,
                              ),
                              const Hbox(5),
                              Container(
                                decoration: BoxDecoration(
                                  color: Get.isDarkMode
                                      ? CommonColors.whiteColor
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(8.sp),
                                  border: Border.all(
                                      color: CommonColors.greenColor),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 14.sp,
                                      right: 15.sp,
                                      top: 11.sp,
                                      bottom: 11.sp),
                                  child: Text(
                                    "renewPlan".tr,
                                    style: Ts.medium12(CommonColors.greenColor),
                                  ),
                                ),
                              ),
                              const Hbox(50),
                              Text(
                                "returntovendor".tr,
                                style: Get.isDarkMode
                                    ? Ts.semiBold12(CommonColors.whiteColor)
                                    : Ts.semiBold12(CommonColors.greyColor2),
                              ),
                              const Hbox(2),
                              Text(
                                '09 Mar 2022',
                                style: Get.isDarkMode
                                    ? Ts.medium12(CommonColors.greyDark11)
                                    : Ts.medium12(CommonColors.greyColor3),
                              ),
                              const Hbox(5),
                              Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sed imperdiet magna,',
                                style: Get.isDarkMode
                                    ? Ts.regular10(CommonColors.greyDark10)
                                    : Ts.regular10(CommonColors.greyColor3),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                softWrap: false,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Hbox(10),
            ],
          ),
        ),
      ),
    );
  }
}
