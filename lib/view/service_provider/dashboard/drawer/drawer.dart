import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rento/components/images.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/utility_funtions.dart/size.dart';
import 'package:rento/utility_funtions.dart/ts.dart';
import 'package:rento/view/selectionPage/selection_screen.dart';
import 'package:rento/view/service_provider/dashboard/cart/cart.dart';
import 'package:rento/view/service_provider/dashboard/filter/filter.dart';
import 'package:rento/view/service_provider/dashboard/profile/user_profile_2.dart';
import 'package:rento/view/service_provider/dashboard/select_address/select_delivery_address.dart';
import 'package:rento/view/service_provider/dashboard/sort/sort.dart';

import '../../../../utility_funtions.dart/navigator_helper.dart';
import '../business_profile/business_profile.dart';
import '../settings/settings.dart';
import '../user_profile/user_profile.dart';

class ServiceProviderDrawer extends StatefulWidget {
  const ServiceProviderDrawer({Key? key}) : super(key: key);

  @override
  State<ServiceProviderDrawer> createState() => _ServiceProviderDrawerState();
}

class _ServiceProviderDrawerState extends State<ServiceProviderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: context.isDarkMode
          ? context.theme.backgroundColor
          : CommonColors.whiteColor,
      child: Padding(
        padding: EdgeInsets.only(left: 10.sp, right: 20.sp, top: 40.sp),
        child: SafeArea(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 20.sp, right: 20.sp),
                child: Row(
                  children: [
                    Container(
                      height: 66.sp,
                      width: 66.sp,
                      decoration: BoxDecoration(
                        color: CommonColors.blueColor,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(75)),
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                      ),
                      child: CircleAvatar(
                        radius: 35.sp,
                        backgroundColor: CommonColors.blackColor,
                        backgroundImage: const AssetImage(Images.person),
                      ),
                    ),
                    SizedBox(
                      width: 10.sp,
                    ),
                    SizedBox(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Hello' Good morning",
                                style:
                                    Ts.medium12(CommonColors.primaryTextColor)),
                            const Hbox(2),
                            Text(
                              'Aman kumar',
                              style: Get.isDarkMode
                                  ? Ts.medium12(CommonColors.whiteColor)
                                  : Ts.semiBold16(CommonColors.blackColor),
                            ),
                            Text(
                              'amankumar@gmail.com',
                              style: Get.isDarkMode
                                  ? Ts.regular12(CommonColors.greyDark1)
                                  : Ts.regular12(const Color(0xffA5A7AA)),
                            ),
                          ]),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              Divider(
                color: Get.isDarkMode
                    ? const Color.fromRGBO(194, 194, 194, 1)
                    : CommonColors.greyColor,
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: ListTile(
                  minLeadingWidth: 2,
                  leading: Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Icon(
                      Icons.dashboard,
                      color: Get.isDarkMode
                          ? CommonColors.whiteColor
                          : CommonColors.blackColor,
                      size: 17,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 12,
                    color: Get.isDarkMode
                        ? CommonColors.lightGrey15
                        : CommonColors.blackColor,
                  ),
                  title: Text("dashboard".tr,
                      style: Get.isDarkMode
                          ? Ts.semiBold14(CommonColors.whiteColor)
                          : Ts.semiBold14(CommonColors.blackColor)),
                ),
              ),
              Divider(
                color: Get.isDarkMode
                    ? const Color.fromRGBO(194, 194, 194, 1)
                    : CommonColors.greyColor,
              ),
              InkWell(
                onTap: () {
                  Push.to(const UserProfile(), context);
                },
                child: ListTile(
                  minLeadingWidth: 2,
                  leading: Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Icon(
                      Icons.person,
                      color: Get.isDarkMode
                          ? CommonColors.whiteColor
                          : CommonColors.blackColor,
                      size: 17,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 12,
                    color: Get.isDarkMode
                        ? CommonColors.lightGrey15
                        : CommonColors.blackColor,
                  ),
                  title: Text("myprofile".tr,
                      style: Get.isDarkMode
                          ? Ts.semiBold14(CommonColors.whiteColor)
                          : Ts.semiBold14(CommonColors.blackColor)),
                ),
              ),
              Divider(
                color: Get.isDarkMode
                    ? const Color.fromRGBO(194, 194, 194, 1)
                    : CommonColors.greyColor,
              ),
              InkWell(
                onTap: () {
                  Push.to(const BusinessProfile(), context);
                },
                child: ListTile(
                  minLeadingWidth: 2,
                  leading: Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Icon(
                      Icons.store,
                      color: Get.isDarkMode
                          ? CommonColors.whiteColor
                          : CommonColors.blackColor,
                      size: 17,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 12,
                    color: Get.isDarkMode
                        ? CommonColors.lightGrey15
                        : CommonColors.blackColor,
                  ),
                  title: Text("businessprofile".tr,
                      style: Get.isDarkMode
                          ? Ts.semiBold14(CommonColors.whiteColor)
                          : Ts.semiBold14(CommonColors.blackColor)),
                ),
              ),
              Divider(
                color: Get.isDarkMode
                    ? const Color.fromRGBO(194, 194, 194, 1)
                    : CommonColors.greyColor,
              ),
              InkWell(
                onTap: () {
                  Push.to(const Settings(), context);
                },
                child: ListTile(
                  minLeadingWidth: 2,
                  leading: Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Icon(
                      Icons.settings_applications,
                      color: Get.isDarkMode
                          ? CommonColors.whiteColor
                          : CommonColors.blackColor,
                      size: 17,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 12,
                    color: Get.isDarkMode
                        ? CommonColors.lightGrey15
                        : CommonColors.blackColor,
                  ),
                  title: Text("settings".tr,
                      style: Get.isDarkMode
                          ? Ts.semiBold14(CommonColors.whiteColor)
                          : Ts.semiBold14(CommonColors.blackColor)),
                ),
              ),
              Divider(
                color: Get.isDarkMode
                    ? const Color.fromRGBO(194, 194, 194, 1)
                    : CommonColors.greyColor,
              ),
              InkWell(
                onTap: () {
                  Push.to(const Sort(), context);
                },
                child: ListTile(
                  minLeadingWidth: 2,
                  leading: Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Icon(
                      Icons.error,
                      color: Get.isDarkMode
                          ? CommonColors.whiteColor
                          : CommonColors.blackColor,
                      size: 17,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 12,
                    color: Get.isDarkMode
                        ? CommonColors.lightGrey15
                        : CommonColors.blackColor,
                  ),
                  title: Text("help".tr,
                      style: Get.isDarkMode
                          ? Ts.semiBold14(CommonColors.whiteColor)
                          : Ts.semiBold14(CommonColors.blackColor)),
                ),
              ),
              Divider(
                color: Get.isDarkMode
                    ? const Color.fromRGBO(194, 194, 194, 1)
                    : CommonColors.greyColor,
              ),
              InkWell(
                onTap: () {
                  Push.to(const SelectionScreen(), context);
                },
                child: ListTile(
                  minLeadingWidth: 2,
                  leading: Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Icon(
                      Icons.power_settings_new,
                      color: Get.isDarkMode
                          ? CommonColors.whiteColor
                          : CommonColors.blackColor,
                      size: 17,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 12,
                    color: Get.isDarkMode
                        ? CommonColors.lightGrey15
                        : CommonColors.blackColor,
                  ),
                  title: Text("logout".tr,
                      style: Get.isDarkMode
                          ? Ts.semiBold14(CommonColors.whiteColor)
                          : Ts.semiBold14(CommonColors.blackColor)),
                ),
              ),
              Divider(
                color: Get.isDarkMode
                    ? const Color.fromRGBO(194, 194, 194, 1)
                    : CommonColors.greyColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
