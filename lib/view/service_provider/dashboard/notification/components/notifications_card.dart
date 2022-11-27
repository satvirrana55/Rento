import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/utility_funtions.dart/size.dart';
import 'package:rento/utility_funtions.dart/ts.dart';

class NotificationCard extends StatefulWidget {
  const NotificationCard({Key? key}) : super(key: key);

  @override
  State<NotificationCard> createState() => _NotificationCardState();
}

class _NotificationCardState extends State<NotificationCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 74, top: 16),
          child: Text(
            'MZ ZS EV',
            style: Get.isDarkMode
                ? Ts.semiBold14(CommonColors.whiteColor)
                : Ts.semiBold14(CommonColors.blackColor),
          ),
        ),
        const Hbox(8),
        Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 74,
          ),
          child: Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sed',
            style: Get.isDarkMode
                ? Ts.regular12(CommonColors.whiteColor)
                : Ts.regular12(CommonColors.blackColor),
          ),
        ),
        const Hbox(20),
        const Divider(
          color: CommonColors.greyColor,
        )
      ],
    );
  }
}
