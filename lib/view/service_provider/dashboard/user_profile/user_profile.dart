import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/utility_funtions.dart/ts.dart';
import 'package:rento/view/service_provider/common/comman_app_bar.dart';
import 'package:rento/view/service_provider/common/common_button.dart';
import 'package:rento/view/service_provider/dashboard/home.dart';
import 'package:rento/view/service_provider/dashboard/user_profile/components/user_profile_text_field.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  final TextEditingController name = TextEditingController(text: "Aman Kumar");
  final TextEditingController email =
      TextEditingController(text: "amankumar@gmail.com");
  final TextEditingController phoneNumber =
      TextEditingController(text: "+91 9876543210");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: CommonAppBar(
          elevation: 1,
          tittle: "userProfile".tr,
        ),
      ),
      backgroundColor: Get.isDarkMode
          ? CommonColors.darkBackgroundColor
          : CommonColors.whiteColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 29),
        child: Column(
          children: [
            InputTextField(
              textEditingController: name,
              label: "name".tr,
            ),
            SizedBox(height: 12),
            InputTextField(
              textEditingController: email,
              label: "email1".tr,
            ),
            SizedBox(height: 12),
            InputTextField(
              textEditingController: phoneNumber,
              label: "phon".tr,
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 25, left: 20, right: 17),
        child: CommonButton(
          tittle: "logout".tr,
          navigator: const ServiceProviderDashoard(),
          style: Ts.medium16(CommonColors.whiteColor),
        ),
      ),
    );
  }
}
