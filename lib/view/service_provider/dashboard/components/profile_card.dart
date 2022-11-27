import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rento/components/images.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/utility_funtions.dart/ts.dart';

class ProfileCard extends StatefulWidget {
  const ProfileCard({Key? key}) : super(key: key);

  @override
  State<ProfileCard> createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.isDarkMode
            ? CommonColors.blackColor
            : CommonColors.whiteColor,
        borderRadius: BorderRadius.circular(0),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                radius: 35.sp,
                backgroundColor: CommonColors.blackColor,
                backgroundImage: const AssetImage(Images.person),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 15,
                color: Color(0xffAAAAAA),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Hello' Good morning",
                      style: Get.isDarkMode
                          ? Ts.medium12(CommonColors.whiteColor)
                          : Ts.medium12(CommonColors.primaryTextColor)),
                  Text(
                    'Aman kumar',
                    style: Get.isDarkMode
                        ? Ts.semiBold16(CommonColors.whiteColor)
                        : Ts.semiBold16(CommonColors.blackColor),
                  ),
                ],
              ),
              subtitle: Text(
                'amankumar@gmail.com',
                style: Get.isDarkMode
                    ? Ts.regular12(const Color.fromRGBO(133, 133, 133, 1))
                    : Ts.regular12(const Color(0xffA5A7AA)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
