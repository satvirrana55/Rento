import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rento/components/images.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/utility_funtions.dart/size.dart';
import 'package:rento/utility_funtions.dart/ts.dart';

import '../../../../../../models/home/image_model.dart';

class ProductDetailsListCard extends StatefulWidget {
  final String? status;
  final Color? buttonColor1;
  final Color? buttonColor2;
  final Color? statusColor;

  const ProductDetailsListCard(
      {Key? key,
      this.status,
      this.buttonColor1,
      this.buttonColor2,
      this.statusColor})
      : super(key: key);

  @override
  State<ProductDetailsListCard> createState() => _ProductDetailsListCardState();
}

class _ProductDetailsListCardState extends State<ProductDetailsListCard> {
  List<ImagesModel> imagesList = [
    ImagesModel(
      imagePath: Images.redcar,
    ),
    ImagesModel(
      imagePath: Images.redcar,
    ),
    ImagesModel(
      imagePath: Images.redcar,
    ),
    ImagesModel(
      imagePath: Images.redcar,
    ),
  ];
  int _currentPage = 0;
  late PageController _pageController = PageController(initialPage: 0);
  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: _currentPage == index ? 12 : 7,
      decoration: BoxDecoration(
        color: _currentPage == index
            ? CommonColors.primaryTextColor
            : CommonColors.greyColor,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            height: MediaQuery.of(context).size.height,
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: SizedBox(
            height: 328.sp,
            width: double.infinity,
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: <Widget>[
                PageView.builder(
                  scrollDirection: Axis.horizontal,
                  controller: _pageController,
                  onPageChanged: _onPageChanged,
                  itemCount: imagesList.length,
                  itemBuilder: (context, i) => Align(
                    alignment: Alignment.center,
                    child: Stack(
                      children: [
                        SizedBox(
                          height: 327.sp,
                          width: double.infinity,
                          child: Image.asset(
                            imagesList[i].imagePath,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          top: 300.sp,
                          left: 180.sp,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                              imagesList.length,
                              (index) => buildDot(index: index),
                            ),
                          ),
                        ),
                        Positioned(
                            left: 365.sp,
                            top: 280.sp,
                            child: Container(
                              height: 26,
                              width: 51.sp,
                              decoration: BoxDecoration(
                                color: const Color(0xff29BF79),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(26.sp)),
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 7),
                                    child: Icon(
                                      Icons.image_outlined,
                                      color: Colors.white,
                                      size: 18.sp,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Text('4',
                                      style:
                                          Ts.regular14(CommonColors.whiteColor))
                                ],
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 300.sp,
          left: 0,
          right: 0,
          bottom: 0,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Get.isDarkMode
                            ? CommonColors.lightDark1
                            : Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 21.sp, top: 14.sp, right: 21.sp),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'MZ ZS EV',
                                  style: Ts.semiBold14(
                                      CommonColors.primaryTextColor),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.circle,
                                      color: widget.statusColor as Color,
                                      size: 10,
                                    ),
                                    const SizedBox(
                                      width: 6,
                                    ),
                                    Text(widget.status as String,
                                        style: Ts.medium11(
                                            widget.statusColor as Color)),
                                  ],
                                ),
                              ],
                            ),
                            const Hbox(2),
                            Text(
                              'Cars',
                              style: Get.isDarkMode
                                  ? Ts.semiBold14(CommonColors.whiteColor)
                                  : Ts.semiBold14(CommonColors.blackColor),
                            ),
                            const Hbox(4),
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
                                        ? Ts.medium11(
                                            CommonColors.primaryLightgrey6)
                                        : Ts.medium11(
                                            CommonColors.primaryLightgrey6)),
                                const SizedBox(width: 22),
                                Image.asset(Images.heart2,
                                    height: 16.sp,
                                    width: 16.sp,
                                    color:
                                        const Color.fromRGBO(158, 174, 184, 1)),
                                const SizedBox(width: 4),
                                Text('40 ${"wishlist".tr}',
                                    style: Get.isDarkMode
                                        ? Ts.medium11(
                                            CommonColors.primaryLightgrey6)
                                        : Ts.medium11(
                                            CommonColors.primaryLightgrey6))
                              ],
                            ),
                            Hbox(10.sp),
                            Divider(
                                color: Get.isDarkMode
                                    ? CommonColors.greyDark3
                                    : CommonColors.greyColor),
                            const Hbox(10),
                            Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur enim enim, ultricies id rutrum sit amet, consequat et odio. Proin nec eleifend sem. Mauris malesuada viverra turpis, ut ornare magna auctor pulvinar. Nullam vel volutpat purus, in euismod tortor. Sed luctus bibendum sem, sed tempus orci blandit non.',
                              style: Get.isDarkMode
                                  ? Ts.regular12(CommonColors.whiteColor)
                                  : Ts.regular12(const Color(0xff98A0A8)),
                            ),
                            const Hbox(7),
                            Divider(
                                color: Get.isDarkMode
                                    ? CommonColors.greyDark3
                                    : CommonColors.greyColor),
                            const Hbox(12),
                            Text(
                              '₹ 1000/Per ${"day".tr}',
                              style: Get.isDarkMode
                                  ? Ts.regular14(CommonColors.whiteColor)
                                  : Ts.regular14(
                                      const Color.fromRGBO(97, 102, 106, 1)),
                            ),
                            const Hbox(20),
                          ]),
                    ),
                  ),
                  const Hbox(21),
                  Container(
                    decoration: BoxDecoration(
                        color: Get.isDarkMode
                            ? CommonColors.lightDark1
                            : Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 21.sp, top: 15.sp, right: 21.sp),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("termsofUse".tr,
                                style: Get.isDarkMode
                                    ? Ts.semiBold14(CommonColors.whiteColor)
                                    : Ts.semiBold14(
                                        CommonColors.primaryTextColor)),
                            Hbox(4.sp),
                            Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur enim enim, ultricies id rutrum sit amet, consequat et odio. Proin nec eleifend sem. Mauris malesuada viverra turpis, ut ornare magna auctor pulvinar. Nullam vel volutpat purus, in euismod tortor. Sed luctus bibendum sem, sed tempus orci blandit non.',
                              style: Get.isDarkMode
                                  ? Ts.regular12(CommonColors.whiteColor)
                                  : Ts.regular12(const Color(0xff98A0A8)),
                            ),
                            const Hbox(21),
                          ]),
                    ),
                  ),
                  const Hbox(21),
                  Container(
                    decoration: BoxDecoration(
                        color: Get.isDarkMode
                            ? CommonColors.lightDark1
                            : Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: 21.sp,
                              top: 18.sp,
                              right: 21.sp,
                            ),
                            child: Text('${"totalEarning".tr} : 450000',
                                style: Get.isDarkMode
                                    ? Ts.medium14(CommonColors.whiteColor)
                                    : Ts.medium14(
                                        const Color.fromRGBO(97, 106, 103, 1))),
                          ),
                          const Hbox(10),
                          Divider(
                              color: Get.isDarkMode
                                  ? CommonColors.greyDark3
                                  : CommonColors.greyColor),
                          Padding(
                            padding: EdgeInsets.only(
                                left: 21.sp, top: 10.sp, right: 21.sp),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text("tenantdetails".tr,
                                  style: Ts.semiBold14(
                                      CommonColors.primaryTextColor)),
                            ),
                          ),
                          const Hbox(11),
                          ListTile(
                            leading: CircleAvatar(
                              radius: 25.sp,
                              backgroundColor: CommonColors.blackColor,
                              backgroundImage: const AssetImage(Images.mask),
                            ),
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Aman kumar',
                                  style: Get.isDarkMode
                                      ? Ts.semiBold16(CommonColors.whiteColor)
                                      : Ts.semiBold16(CommonColors.blackColor),
                                ),
                                Text(
                                  '${"orderID".tr} : 45414156464514231',
                                  style: Get.isDarkMode
                                      ? Ts.semiBold12(CommonColors.lightGrey13)
                                      : Ts.semiBold12(CommonColors.greyColor),
                                ),
                                Text(
                                  '${"orderDate".tr} : 09 Mar 2022',
                                  style: Get.isDarkMode
                                      ? Ts.regular12(CommonColors.greyDark5)
                                      : Ts.regular12(const Color(0xffA5A7AA)),
                                ),
                              ],
                            ),
                          ),
                          const Hbox(25),
                        ]),
                  ),
                  const Hbox(21),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
