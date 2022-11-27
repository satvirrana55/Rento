import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rento/components/images.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/utility_funtions.dart/size.dart';
import 'package:rento/utility_funtions.dart/ts.dart';

class ProductsListCard extends StatefulWidget {
  final String text;
  final Color color;
  const ProductsListCard({Key? key, required this.text, required this.color})
      : super(key: key);

  @override
  State<ProductsListCard> createState() => _ProductsListCardState();
}

class _ProductsListCardState extends State<ProductsListCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 150.sp,
          decoration: BoxDecoration(
            color: Get.isDarkMode ? CommonColors.lightDark1 : Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(15.sp)),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 5, right: 0, top: 0),
            child: Row(
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(15.sp)),
                      child: Image.asset(
                        Images.redcar,
                        height: 140.sp,
                        width: 122.sp,
                        fit: BoxFit.fitHeight,
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
                  padding: EdgeInsets.only(top: 13.sp, bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text("MZ ZS EV",
                                  style: Ts.semiBold14(
                                      CommonColors.primaryTextColor)),
                              "views".tr == "Ansichten"
                                  ? Wbox(105.sp)
                                  : "views".tr == "विचारों"
                                      ? Wbox(110.sp)
                                      : Wbox(110.sp),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.circle,
                                color: widget.color,
                                size: 7,
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              Text(widget.text,
                                  textAlign: TextAlign.end,
                                  style: Ts.medium11(widget.color)),
                              Icon(Icons.more_vert,
                                  color: Get.isDarkMode
                                      ? CommonColors.darkBackgroundColor
                                      : CommonColors.whiteColor)
                            ],
                          ),
                        ],
                      ),
                      Hbox(5.sp),
                      Text("₹ 1000/Per ${"day".tr}",
                          style: Get.isDarkMode
                              ? Ts.regular11(CommonColors.whiteColor)
                              : Ts.regular11(CommonColors.primaryGrey)),
                      Hbox(5.sp),
                      Text("Cars",
                          style: Ts.semiBold12(CommonColors.primaryTextColor)),
                      Hbox(9.sp),
                      Text("${"totalEarning".tr} : 450000",
                          style: Get.isDarkMode
                              ? Ts.medium11(CommonColors.whiteColor)
                              : Ts.medium11(CommonColors.darkGreyColor)),
                      Hbox(9.sp),
                      Row(
                        children: [
                          Row(
                            children: [
                              Image.asset(Images.eye,
                                  height: 20.sp,
                                  width: 20.sp,
                                  color:
                                      const Color.fromRGBO(158, 174, 184, 1)),
                              const SizedBox(width: 4),
                              Text('124 ${"views".tr}',
                                  style: Get.isDarkMode
                                      ? Ts.medium11(CommonColors.lightGrey14)
                                      : Ts.medium11(
                                          CommonColors.primaryLightgrey6))
                            ],
                          ),
                          "views".tr == "Ansichten"
                              ? Wbox(40.sp)
                              : "views".tr == "विचारों"
                                  ? Wbox(80.sp)
                                  : Wbox(80.sp),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Image.asset(Images.heart2,
                                  height: 15.sp,
                                  width: 15.sp,
                                  color: CommonColors.primaryLightgrey6),
                              const SizedBox(width: 4),
                              Text('40 ${"wishlist".tr}',
                                  style: Get.isDarkMode
                                      ? Ts.medium11(CommonColors.lightGrey14)
                                      : Ts.medium11(
                                          CommonColors.primaryLightgrey6)),
                              const SizedBox(width: 4),
                            ],
                          ),
                          const SizedBox(width: 4),
                        ],
                      ),
                    ],
                  ),
                ),
                /* const Spacer(
                  flex: 1,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 13.sp),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.circle,
                            color: widget.color,
                            size: 7,
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          Text(widget.text, style: Ts.medium11(widget.color)),
                          const Icon(Icons.more_vert)
                        ],
                      ),
                      const Hbox(73),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 22,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Image.asset(Images.heart2,
                                height: 15.sp,
                                width: 15.sp,
                                color: CommonColors.primaryLightgrey6),
                            const SizedBox(width: 4),
                            Text('40 ${"wishlist".tr}',
                                style:
                                    Ts.medium11(CommonColors.primaryLightgrey6))
                          ],
                        ),
                      ),
                    ],
                  ),
                ), */
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
