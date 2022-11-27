import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/models/vendors/vendor_model.dart';

import '../../../../components/images.dart';
import '../../../../utility_funtions.dart/size.dart';
import '../../../../utility_funtions.dart/ts.dart';

class VendorScreenView extends StatefulWidget {
  const VendorScreenView({Key? key}) : super(key: key);

  @override
  State<VendorScreenView> createState() => _VendorScreenViewState();
}

class _VendorScreenViewState extends State<VendorScreenView>
    with TickerProviderStateMixin {
  late final TabController _controller = TabController(length: 4, vsync: this);
  @override
  List<VendorModel> vendorList = [
    VendorModel(
      imagePath: Images.redcar,
      name: 'MZ ZS EV',
      price: '₹ 1000/Per day',
      companyname: 'By Royal cars',
    ),
    VendorModel(
      imagePath: Images.redcar,
      name: 'MZ ZS EV',
      price: '₹ 1000/Per day',
      companyname: 'By Royal cars',
    ),
    VendorModel(
      imagePath: Images.redcar,
      name: 'MZ ZS EV',
      price: '₹ 1000/Per day',
      companyname: 'By Royal cars',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Get.isDarkMode
            ? CommonColors.darkBackgroundColor
            : CommonColors.bgColor,
        appBar: AppBar(
          titleSpacing: 0,
          elevation: 1.5,
          shadowColor: CommonColors.whiteColor,
          backgroundColor: Get.isDarkMode
              ? CommonColors.blackColor
              : CommonColors.whiteColor,
          automaticallyImplyLeading: true,
          leading: Icon(Icons.arrow_back,
              color: Get.isDarkMode
                  ? CommonColors.whiteColor
                  : CommonColors.blackColor),
          title: Text(
            'Royal Cars',
            style: Get.isDarkMode
                ? Ts.semiBold18(CommonColors.whiteColor)
                : Ts.semiBold18(CommonColors.blackColor),
          ),
        ),
        body: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Container(
                  //height: 177.sp,
                  decoration: BoxDecoration(
                      color: Get.isDarkMode
                          ? CommonColors.blackColor
                          : CommonColors.whiteColor,
                      border: Border(
                          bottom: BorderSide(
                              width: 0.5,
                              color: Get.isDarkMode
                                  ? CommonColors.greyColor5
                                  : Colors.white),
                          top: BorderSide(
                              width: 0.5,
                              color: Get.isDarkMode
                                  ? CommonColors.greyColor5
                                  : Colors.white))),
                  child: Column(
                    children: [
                      const Hbox(10),
                      ListTile(
                        leading: CircleAvatar(
                          radius: 35.sp,
                          backgroundColor: CommonColors.blackColor,
                          backgroundImage: const AssetImage(Images.jutemill),
                        ),
                        title: Text("Royal cars",
                            style: Get.isDarkMode
                                ? Ts.semiBold16(CommonColors.whiteColor)
                                : Ts.semiBold16(CommonColors.blackColor)),
                        subtitle: Text(
                          'Gurugram',
                          style: Ts.medium12(CommonColors.greyColor4),
                        ),
                      ),
                      const Divider(
                        color: CommonColors.greyColor,
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        height: 56,
                        child: TabBar(
                          unselectedLabelStyle:
                              Ts.medium14(CommonColors.greyColor4),
                          indicatorColor: CommonColors.mainColor,
                          controller: _controller,
                          labelStyle: Ts.medium14(CommonColors.mainColor),
                          labelColor: CommonColors.mainColor,
                          unselectedLabelColor: CommonColors.greyColor4,
                          indicatorWeight: 2,
                          indicatorPadding: const EdgeInsets.only(top: 53),
                          isScrollable: true,
                          indicator: const BoxDecoration(
                            color: CommonColors.mainColor,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(5),
                            ),
                          ),
                          tabs: [
                            Padding(
                              padding: "furniture".tr == "फर्नीचर"
                                  ? EdgeInsets.only(
                                      right: 25.sp, top: 0.0, bottom: 0.0)
                                  : EdgeInsets.only(
                                      right: 10.sp, top: 0.0, bottom: 0.0),
                              child: Tab(
                                  icon: Text(
                                style: const TextStyle(
                                  height: 1.5,
                                ),
                                "furniture".tr,
                              )),
                            ),
                            Padding(
                              padding: "furniture".tr == "फर्नीचर"
                                  ? EdgeInsets.only(
                                      right: 25.sp, top: 0.0, bottom: 0.0)
                                  : EdgeInsets.only(
                                      right: 10.sp, top: 0.0, bottom: 0.0),
                              child: Tab(
                                  icon: Text(
                                style: const TextStyle(
                                  height: 1.1,
                                ),
                                "cars".tr,
                              )),
                            ),
                            Padding(
                              padding: "furniture".tr == "फर्नीचर"
                                  ? EdgeInsets.only(
                                      right: 25.sp, top: 0.0, bottom: 0.0)
                                  : EdgeInsets.only(
                                      right: 10.sp, top: 0.0, bottom: 0.0),
                              child: Tab(
                                  icon: Text(
                                style: const TextStyle(
                                  height: 1.1,
                                ),
                                "bikes".tr,
                              )),
                            ),
                            Padding(
                              padding: "furniture".tr == "फर्नीचर"
                                  ? EdgeInsets.only(right: 5.sp, top: 0.0)
                                  : EdgeInsets.only(right: 10.sp, top: 0.0),
                              child: Tab(
                                  icon: Text(
                                style: const TextStyle(
                                  height: 1.1,
                                ),
                                "properties".tr,
                              )),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    controller: _controller,
                    children: [
                      furniture(vendorList),
                      car(vendorList),
                      bike(vendorList),
                      properties(vendorList),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget furniture(vendorList) {
  return SizedBox(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Padding(
        padding: EdgeInsets.all(17.sp),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.7 / 2,
                crossAxisSpacing: 20.sp,
                mainAxisSpacing: 20.sp),
            itemCount: 3,
            itemBuilder: (BuildContext ctx, i) {
              return InkWell(
                onTap: () {
                  //Push.to(const NewListingDetailScreen(), context);
                },
                child: Container(
                  height: 227.sp,
                  decoration: BoxDecoration(
                      color: Get.isDarkMode
                          ? CommonColors.lightDark1
                          : CommonColors.whiteColor,
                      borderRadius: BorderRadius.circular(20.sp)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.sp),
                                topRight: Radius.circular(20.sp)),
                            child: Image.asset(
                              vendorList[i].imagePath,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Positioned(
                              left: 140.sp,
                              top: 13.sp,
                              right: 15.sp,
                              child: Icon(
                                Icons.favorite_border,
                                color: CommonColors.darkGreyColor4,
                                size: 30.sp,
                              )),
                        ],
                      ),
                      Hbox(5.sp),
                      Padding(
                        padding: EdgeInsets.only(left: 14.sp),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              vendorList[i].name,
                              style: Ts.semiBold14(CommonColors.mainColor),
                            ),
                            Hbox(4.sp),
                            Text(
                              vendorList[i].companyname,
                              style: Ts.regular10(const Color(0xffA5A7AA)),
                            ),
                            Hbox(4.sp),
                            Text(
                              vendorList[i].price,
                              style: Get.isDarkMode
                                  ? Ts.regular11(CommonColors.whiteColor)
                                  : Ts.regular11(const Color(0xff61666A)),
                            ),
                            Hbox(14.sp),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    ),
  );
}

Widget car(vendorList) {
  return SizedBox(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Padding(
        padding: EdgeInsets.all(17.sp),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.7 / 2,
                crossAxisSpacing: 20.sp,
                mainAxisSpacing: 20.sp),
            itemCount: 3,
            itemBuilder: (BuildContext ctx, i) {
              return InkWell(
                onTap: () {
                  //Push.to(const NewListingDetailScreen(), context);
                },
                child: Container(
                  height: 227.sp,
                  decoration: BoxDecoration(
                      color: Get.isDarkMode
                          ? CommonColors.lightDark1
                          : CommonColors.whiteColor,
                      borderRadius: BorderRadius.circular(20.sp)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.sp),
                                topRight: Radius.circular(20.sp)),
                            child: Image.asset(
                              vendorList[i].imagePath,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                              left: 140.sp,
                              top: 13.sp,
                              right: 15.sp,
                              child: Icon(
                                Icons.favorite_border,
                                color: CommonColors.darkGreyColor4,
                                size: 30.sp,
                              )),
                        ],
                      ),
                      Hbox(5.sp),
                      Padding(
                        padding: EdgeInsets.only(left: 14.sp),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              vendorList[i].name,
                              style: Ts.semiBold14(CommonColors.mainColor),
                            ),
                            Hbox(4.sp),
                            Text(
                              vendorList[i].companyname,
                              style: Ts.regular10(const Color(0xffA5A7AA)),
                            ),
                            Hbox(4.sp),
                            Text(
                              vendorList[i].price,
                              style: Get.isDarkMode
                                  ? Ts.regular11(CommonColors.whiteColor)
                                  : Ts.regular11(const Color(0xff61666A)),
                            ),
                            Hbox(14.sp),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    ),
  );
}

Widget bike(vendorList) {
  return SizedBox(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Padding(
        padding: EdgeInsets.all(17.sp),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.7 / 2,
                crossAxisSpacing: 20.sp,
                mainAxisSpacing: 20.sp),
            itemCount: 3,
            itemBuilder: (BuildContext ctx, i) {
              return InkWell(
                onTap: () {
                  //Push.to(const NewListingDetailScreen(), context);
                },
                child: Container(
                  height: 227.sp,
                  decoration: BoxDecoration(
                      color: Get.isDarkMode
                          ? CommonColors.lightDark1
                          : CommonColors.whiteColor,
                      borderRadius: BorderRadius.circular(20.sp)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.sp),
                                topRight: Radius.circular(20.sp)),
                            child: Image.asset(
                              vendorList[i].imagePath,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                              left: 140.sp,
                              top: 13.sp,
                              right: 15.sp,
                              child: Icon(
                                Icons.favorite_border,
                                color: CommonColors.darkGreyColor4,
                                size: 30.sp,
                              )),
                        ],
                      ),
                      Hbox(5.sp),
                      Padding(
                        padding: EdgeInsets.only(left: 14.sp),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              vendorList[i].name,
                              style: Ts.semiBold14(CommonColors.mainColor),
                            ),
                            Hbox(4.sp),
                            Text(
                              vendorList[i].companyname,
                              style: Ts.regular10(const Color(0xffA5A7AA)),
                            ),
                            Hbox(4.sp),
                            Text(
                              vendorList[i].price,
                              style: Get.isDarkMode
                                  ? Ts.regular11(CommonColors.whiteColor)
                                  : Ts.regular11(const Color(0xff61666A)),
                            ),
                            Hbox(14.sp),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    ),
  );
}

Widget properties(vendorList) {
  return SizedBox(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Padding(
        padding: EdgeInsets.all(17.sp),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.7 / 2,
                crossAxisSpacing: 20.sp,
                mainAxisSpacing: 20.sp),
            itemCount: 3,
            itemBuilder: (BuildContext ctx, i) {
              return InkWell(
                onTap: () {
                  //Push.to(const NewListingDetailScreen(), context);
                },
                child: Container(
                  height: 227.sp,
                  decoration: BoxDecoration(
                      color: Get.isDarkMode
                          ? CommonColors.lightDark1
                          : CommonColors.whiteColor,
                      borderRadius: BorderRadius.circular(20.sp)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.sp),
                                topRight: Radius.circular(20.sp)),
                            child: Image.asset(
                              vendorList[i].imagePath,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                              left: 140.sp,
                              top: 13.sp,
                              right: 15.sp,
                              child: Icon(
                                Icons.favorite_border,
                                color: CommonColors.darkGreyColor4,
                                size: 30.sp,
                              )),
                        ],
                      ),
                      Hbox(5.sp),
                      Padding(
                        padding: EdgeInsets.only(left: 14.sp),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              vendorList[i].name,
                              style: Ts.semiBold14(CommonColors.mainColor),
                            ),
                            Hbox(4.sp),
                            Text(
                              vendorList[i].companyname,
                              style: Ts.regular10(const Color(0xffA5A7AA)),
                            ),
                            Hbox(4.sp),
                            Text(
                              vendorList[i].price,
                              style: Get.isDarkMode
                                  ? Ts.regular11(CommonColors.whiteColor)
                                  : Ts.regular11(const Color(0xff61666A)),
                            ),
                            Hbox(14.sp),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    ),
  );
}
