import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/utility_funtions.dart/ts.dart';
import 'package:rento/view/service_provider/common/comman_app_bar.dart';
import 'package:rento/view/service_provider/common/common_button.dart';
import 'package:rento/view/service_provider/dashboard/home.dart';
import 'package:rento/view/service_provider/dashboard/settings/components/dropdown.dart';

import '../../../bottom_navigation/profile/preferred_lang/preferred_lang_view.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  var autoOrder = [
    "on".tr,
    "off".tr,
  ];
  var shop = [
    "open".tr,
    "closed".tr,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50.0),
        child: CommonAppBar(
          tittle: "settings".tr,
          elevation: 0.5,
        ),
      ),
      backgroundColor: context.isDarkMode
          ? CommonColors.darkBackgroundColor
          : CommonColors.whiteColor,
      body: Padding(
        padding: EdgeInsets.only(top: 10.sp, left: 20),
        child: Column(
          children: [
            ListTile(
              leading: Text(
                'Shop',
                style: Get.isDarkMode
                    ? Ts.medium16(CommonColors.whiteColor)
                    : Ts.medium16(CommonColors.blackColor),
              ),
              trailing: SettingsDropDown(
                title: 'closed'.tr,
                items: shop,
              ),
            ),
            const Divider(
              color: CommonColors.greyColor,
            ),
            ListTile(
              leading: Text(
                'Auto Order Accept',
                style: Get.isDarkMode
                    ? Ts.medium16(CommonColors.whiteColor)
                    : Ts.medium16(CommonColors.blackColor),
              ),
              trailing: SettingsDropDown(
                title: 'off'.tr,
                items: autoOrder,
              ),
            ),
            const Divider(
              color: CommonColors.greyColor,
            ),
            ListTile(
              onTap: () {
                Get.to(() => const PreferredLanguageView());
              },
              leading: Text(
                'changePreferredLanguage'.tr,
                style: Get.isDarkMode
                    ? Ts.medium16(CommonColors.whiteColor)
                    : Ts.medium16(CommonColors.blackColor),
              ),
            ),
            const Divider(
              color: CommonColors.greyColor,
            ),
            ListTile(
              onTap: () {
                if (Get.isDarkMode) {
                  Get.changeThemeMode(ThemeMode.light);
                } else {
                  Get.changeThemeMode(ThemeMode.dark);
                }
              },
              leading: Text(
                'switchtheme'.tr,
                style: Get.isDarkMode
                    ? Ts.medium16(CommonColors.whiteColor)
                    : Ts.medium16(CommonColors.blackColor),
              ),
            ),
            const Divider(
              color: CommonColors.greyColor,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 25, left: 29, right: 29),
        child: CommonButton(
          tittle: "logout".tr,
          navigator: const ServiceProviderDashoard(),
          style: Ts.medium16(CommonColors.whiteColor),
        ),
      ),
    );
  }
}
