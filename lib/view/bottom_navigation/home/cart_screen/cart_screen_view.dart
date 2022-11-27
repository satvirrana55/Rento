import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/utility_funtions.dart/size.dart';
import 'package:rento/utility_funtions.dart/ts.dart';
import 'package:rento/view/bottom_navigation/order_detail_screen/order_detail_screen_view.dart';

import '../../../../components/images.dart';
import '../../../service_provider/common/comman_app_bar.dart';

class CartScreenView extends StatefulWidget {
  const CartScreenView({Key? key}) : super(key: key);

  @override
  State<CartScreenView> createState() => _CartScreenViewState();
}

class _CartScreenViewState extends State<CartScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.isDarkMode
          ? CommonColors.darkBackgroundColor
          : const Color(0xffF3F3F3),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.sp),
        child: CommonAppBar(
          tittle: "cart".tr,
          color: Colors.transparent,
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
                  child: Container(
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
                            Row(
                              children: [
                                Text(
                                  'MZ ZS EV',
                                  style: Ts.semiBold14(CommonColors.mainColor),
                                ),
                                const Wbox(155),
                                Icon(
                                  Icons.cancel,
                                  size: 20.sp,
                                  color: const Color(0xffC4C1C1),
                                ),
                              ],
                            ),
                            const Hbox(2),
                            Text(
                              'By Royal cars',
                              style: Ts.regular10(const Color(0xffA5A7AA)),
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
                              '₹ 1000/Per day',
                              style: Get.isDarkMode
                                  ? Ts.regular10(CommonColors.whiteColor)
                                  : Ts.regular10(const Color(0xff61666A)),
                            ),
                            const Hbox(6),
                            Row(
                              children: [
                                Text(
                                  '4 Days',
                                  style: Get.isDarkMode
                                      ? Ts.semiBold11(CommonColors.whiteColor)
                                      : Ts.semiBold11(const Color(0xff434343)),
                                ),
                                const Wbox(10),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.sp),
                                    color: const Color(0xffC1DAFF),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 9.sp,
                                        right: 9.sp,
                                        top: 3.sp,
                                        bottom: 3.sp),
                                    child: Text(
                                      "edit".tr,
                                      style:
                                          Ts.regular10(const Color(0xff2E61AE)),
                                    ),
                                  ),
                                ),
                                "edit".tr == "Edit"
                                    ? Wbox(145.sp)
                                    : Wbox(68.sp),
                                Text(
                                  textAlign: TextAlign.right,
                                  '₹ 4000',
                                  style: Ts.semiBold12(CommonColors.mainColor),
                                ),
                              ],
                            ),
                            const Hbox(15),
                          ],
                        ),
                      ]),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
