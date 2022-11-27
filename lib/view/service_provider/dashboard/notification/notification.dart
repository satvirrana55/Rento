import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rento/helpers/common_colors.dart';

import '../../common/comman_app_bar.dart';
import 'components/notifications_card.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50.0),
        child: CommonAppBar(
          tittle: "notification".tr,
          color: Colors.transparent,
          elevation: 0.5,
        ),
      ),
      backgroundColor: Get.isDarkMode
          ? CommonColors.darkBackgroundColor
          : CommonColors.whiteColor,
      body: ListView.builder(
          shrinkWrap: true,
          itemCount: 20,
          itemBuilder: (context, index) {
            return const NotificationCard();
          }),
    );
  }
}
