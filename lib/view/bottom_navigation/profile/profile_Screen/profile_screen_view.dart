import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:rento/components/images.dart';
import 'package:rento/themes/themes.dart';
import 'package:rento/utility_funtions.dart/size.dart';
import 'package:rento/utility_funtions.dart/ts.dart';
import 'package:rento/view/authentication/login/login_view.dart';
import 'package:rento/view/bottom_navigation/profile/preferred_lang/preferred_lang_view.dart';
import 'package:rento/view/selectionPage/selection_screen.dart';

import '../../../../components/custom_listtile.dart';
import '../../../../helpers/common_colors.dart';
import '../../../service_provider/dashboard/profile/user_profile_2.dart';
import '../../order_screen/orders_screen_view.dart';
import '../cancel_order/cancel_order_screen_view.dart';
import '../faq/faq_screen_view.dart';
import '../payment_screen/payment_history_screen_view.dart';
import '../saved_address/saved_address_screen_view.dart';
import '../saved_card/saved_card_screen.dart';
import '../tnc/term_and_condition_screen_view.dart';

class ProfileScreenView extends StatefulWidget {
  const ProfileScreenView({Key? key}) : super(key: key);

  @override
  State<ProfileScreenView> createState() => _ProfileScreenViewState();
}

class _ProfileScreenViewState extends State<ProfileScreenView> {
  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Get.put(ThemeProvider());

    return Scaffold(
      backgroundColor: context.isDarkMode
          ? CommonColors.darkBackgroundColor
          : const Color(0xffF3F3F3),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        toolbarHeight: 100.sp,
        title: SvgPicture.asset(
          SvgImages.rento,
          height: 33.sp,
          width: 98.sp,
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20.sp),
              child: Container(
                height: 107.sp,
                decoration: BoxDecoration(
                  color: Get.isDarkMode
                      ? CommonColors.lightDark1
                      : CommonColors.whiteColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  onTap: () {
                    Get.to(() => const UserProfile2());
                  },
                  leading: CircleAvatar(
                    radius: 35.sp,
                    backgroundColor: CommonColors.whiteColor,
                    backgroundImage: const AssetImage(Images.mask),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: Color(0xffAAAAAA),
                  ),
                  title: Text(
                    'Aman kumar',
                    style: Get.isDarkMode
                        ? Ts.semiBold14(CommonColors.whiteColor)
                        : Ts.semiBold14(CommonColors.blackColor),
                  ),
                  subtitle: Text(
                    'amankumar@gmail.com',
                    style: Get.isDarkMode
                        ? Ts.regular10(CommonColors.greyDark1)
                        : Ts.regular10(const Color(0xffA5A7AA)),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: 20.sp, right: 20.sp, bottom: 20.sp),
              child: Container(
                decoration: BoxDecoration(
                  color: Get.isDarkMode
                      ? CommonColors.lightDark1
                      : CommonColors.whiteColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    const Hbox(10),
                    CustomListTile(
                      onPressed: () {
                        Get.to(() => const OrdersScreenView());
                      },
                      textName: "myOrders".tr,
                      image: SvgPicture.asset(SvgImages.box),
                    ),
                    const Hbox(5),
                    const Divider(
                      color: CommonColors.greyColor,
                    ),
                    const Hbox(5),
                    CustomListTile(
                      onPressed: () {
                        Get.to(() => const PaymentHistoryScreenView());
                      },
                      textName: "paymentHistory".tr,
                      image: SvgPicture.asset(SvgImages.dollar),
                    ),
                    const Hbox(5),
                    const Divider(
                      color: CommonColors.greyColor,
                    ),
                    const Hbox(5),
                    CustomListTile(
                      onPressed: () {
                        Get.to(() => const CancelOrderScreen());
                      },
                      textName: "refundHistory".tr,
                      image: SvgPicture.asset(SvgImages.rotateccw),
                    ),
                    const Hbox(5),
                    const Divider(
                      color: CommonColors.greyColor,
                    ),
                    CustomListTile(
                      onPressed: () {
                        Get.to(() => const SavedAddressScreenView());
                      },
                      textName: "savedAddress".tr,
                      image: SvgPicture.asset(SvgImages.location),
                    ),
                    const Hbox(5),
                    const Divider(
                      color: CommonColors.greyColor,
                    ),
                    const Hbox(5),
                    CustomListTile(
                      onPressed: () {
                        Get.to(() => const SavedCardScreen());
                      },
                      textName: "paymentMethod".tr,
                      image: SvgPicture.asset(SvgImages.cc),
                    ),
                    const Hbox(5),
                    const Divider(
                      color: CommonColors.greyColor,
                    ),
                    const Hbox(5),
                    CustomListTile(
                      onPressed: () {
                        Get.to(() => const PreferredLanguageView());
                      },
                      textName: "changePreferredLanguage".tr,
                      image: SvgPicture.asset(SvgImages.lang),
                    ),
                    const Hbox(5),
                    const Divider(
                      color: CommonColors.greyColor,
                    ),
                    CustomListTile(
                      onPressed: () {
                        if (Get.isDarkMode) {
                          Get.changeThemeMode(ThemeMode.light);
                        } else {
                          Get.changeThemeMode(ThemeMode.dark);
                        }
                      },
                      textName: 'switchtheme'.tr,
                      image: SvgPicture.asset(SvgImages.lang),
                    ),
                    const Hbox(5),
                    const Divider(
                      color: CommonColors.greyColor,
                    ),
                    const Hbox(5),
                    CustomListTile(
                      onPressed: () {
                        Get.to(() => const FAQScreen());
                      },
                      textName: "faq".tr,
                      image: SvgPicture.asset(SvgImages.helpcircle),
                    ),
                    const Hbox(5),
                    const Divider(
                      color: CommonColors.greyColor,
                    ),
                    const Hbox(5),
                    CustomListTile(
                      onPressed: () {
                        Get.to(() => const TermAndConditionScreenView());
                      },
                      textName: "termsandConditions".tr,
                      image: SvgPicture.asset(SvgImages.alertcircle),
                    ),
                    const Hbox(5),
                    const Divider(
                      color: CommonColors.greyColor,
                    ),
                    const Hbox(5),
                    CustomListTile(
                      onPressed: () async {
                        await FirebaseAuth.instance.signOut();

                        Get.to(() => const SelectionScreen());
                      },
                      textName: "logout".tr,
                      image: SvgPicture.asset(SvgImages.power),
                    ),
                    const Hbox(5)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
