import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rento/components/images.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/utility_funtions.dart/size.dart';
import 'package:rento/utility_funtions.dart/ts.dart';

class AddProductsCard extends StatefulWidget {
  const AddProductsCard({Key? key}) : super(key: key);

  @override
  State<AddProductsCard> createState() => _AddProductsCardState();
}

class _AddProductsCardState extends State<AddProductsCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 145.sp,
          width: MediaQuery.of(context).size.width / 1.1,
          decoration: BoxDecoration(
            color: Get.isDarkMode ? CommonColors.lightDark1 : Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(15.sp)),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 5, right: 5, top: 0),
            child: Row(
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(15.sp)),
                      child: Image.asset(
                        Images.redcar,
                        height: 136.sp,
                        width: 122.sp,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                        left: 65.sp,
                        top: 105.sp,
                        child: Container(
                          height: 19,
                          width: 38,
                          decoration: BoxDecoration(
                            color: const Color(0xff29BF79),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.sp)),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Icon(
                                  Icons.image_outlined,
                                  color: Colors.white,
                                  size: 14.sp,
                                ),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                '4',
                                style: Ts.regular11(CommonColors.whiteColor),
                              )
                            ],
                          ),
                        )),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 13),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "MZ ZS EV",
                        style: Get.isDarkMode
                            ? Ts.semiBold14(CommonColors.whiteColor)
                            : Ts.semiBold14(CommonColors.primaryTextColor),
                      ),
                      const Hbox(9),
                      Text(
                        "₹ 1000/Per ${"day".tr}",
                        style: Get.isDarkMode
                            ? Ts.regular11(CommonColors.whiteColor)
                            : Ts.regular11(
                                const Color.fromRGBO(97, 102, 106, 1)),
                      ),
                      const Hbox(9),
                      Text(
                        "Cars",
                        style: Get.isDarkMode
                            ? Ts.semiBold12(CommonColors.primaryDarkGrey1)
                            : Ts.semiBold12(CommonColors.primaryTextColor),
                      ),
                    ],
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Align(
                      alignment: Alignment.topRight,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.more_vert,
                            color: Get.isDarkMode
                                ? CommonColors.primaryButtonColor
                                : Colors.black,
                          ))),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}
