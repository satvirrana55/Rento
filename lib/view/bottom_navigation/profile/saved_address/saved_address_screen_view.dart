import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/utility_funtions.dart/size.dart';
import 'package:rento/utility_funtions.dart/ts.dart';
import 'package:rento/view/bottom_navigation/add_new_card_detail/add_new_card_details_view.dart';

import '../../../../components/buttons.dart';
import '../../../../utility_funtions.dart/navigator_helper.dart';
import '../../../service_provider/common/comman_app_bar.dart';

class SavedAddressScreenView extends StatefulWidget {
  const SavedAddressScreenView({Key? key}) : super(key: key);

  @override
  State<SavedAddressScreenView> createState() => _SavedAddressScreenViewState();
}

class _SavedAddressScreenViewState extends State<SavedAddressScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.isDarkMode
          ? CommonColors.darkBackgroundColor
          : const Color(0xffF3F3F3),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.sp),
        child: CommonAppBar(
          tittle: "savedAddress".tr,
          color: Colors.transparent,
          elevation: Get.isDarkMode ? 0.5 : 0,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: 4,
            itemBuilder: (ctx, i) {
              return Padding(
                padding: EdgeInsets.only(bottom: 19.sp),
                child: Container(
                  height: 180.sp,
                  decoration: BoxDecoration(
                    color: Get.isDarkMode
                        ? CommonColors.lightDark1
                        : CommonColors.whiteColor,
                    borderRadius: BorderRadius.circular(20.sp),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: 20.sp,
                            right: 20.sp,
                            top: 20.sp,
                            bottom: 10.sp),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'home'.tr,
                              style: Ts.medium16(const Color(0xff40D493)),
                            ),
                            const Hbox(8.0),
                            Text(
                              'H. 7424 Street 545, Sector B254 Noida Uttar Pradesh 210301',
                              style: Get.isDarkMode
                                  ? Ts.medium13(CommonColors.greyColor1)
                                  : Ts.medium13(const Color(0xff61666A)),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        color: CommonColors.greyColor,
                      ),
                      const Hbox(10.0),
                      IntrinsicHeight(
                        child: Padding(
                          padding: EdgeInsets.only(right: 22.sp),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "edit".tr,
                                style:Get.isDarkMode? Ts.medium16( const Color.fromRGBO(64,212,147, 1)): Ts.medium16(const Color(0xff2687D5)),
                              ),
                              const Wbox(5.0),
                              const VerticalDivider(
                                color: CommonColors.greyColor,
                                width: 10.0,
                              ),
                              const Wbox(5.0),
                              Text(
                                "delete".tr,
                                style: Ts.medium16(const Color(0xffF95252)),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
      bottomNavigationBar: Container(
        height: 93.sp,
        decoration: BoxDecoration(
          color: Get.isDarkMode
              ? CommonColors.blackColor
              : CommonColors.whiteColor,
          border: Border(
              top: BorderSide(
                  width: 0.5,
                  color:
                      Get.isDarkMode ? CommonColors.greyColor5 : Colors.white)),
        ),
        child: Padding(
          padding: EdgeInsets.only(
              left: 23.sp, right: 23.sp, top: 15.sp, bottom: 15.sp),
          child: GreenBorderButton(
            onPressed: () {
              Push.to(const AddNewCardDetailsView(), context);
            },
            textName: "addNewAdd".tr,
            width: double.infinity,
          ),
        ),
      ),
    );
  }
}
