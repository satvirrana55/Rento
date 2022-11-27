import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:rento/components/images.dart';
import 'package:rento/controller/home/home_controller.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/models/home/category_model.dart';
import 'package:rento/themes/themes.dart';
import 'package:rento/utility_funtions.dart/navigator_helper.dart';
import 'package:rento/utility_funtions.dart/size.dart';
import 'package:rento/utility_funtions.dart/ts.dart';
import 'package:rento/view/bottom_navigation/home/cart_screen/cart_screen_view.dart';
import 'package:rento/view/bottom_navigation/product_categories/product_categories_view.dart';

import '../../../../models/home/image_model.dart';
import '../../../../models/home/new_listing_model.dart';
import '../../../../models/home/top_vendor_model.dart';
import '../search_screen2.dart';

class HomeScreenView extends StatefulWidget {
  const HomeScreenView({Key? key}) : super(key: key);

  @override
  State<HomeScreenView> createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  final HomeController _homeController = Get.isRegistered<HomeController>()
      ? Get.find<HomeController>()
      : Get.put(HomeController());
  int _currentPage = 0;
  late PageController _pageController = PageController(initialPage: 0);
  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

//toogle to change page action
  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<CategoryModel> categoryList = [
      CategoryModel(
        imagePath: Images.car,
        title: "Cars",
      ),
      CategoryModel(
        imagePath: Images.furniture,
        title: "Furniture",
      ),
      CategoryModel(
        imagePath: Images.electronics,
        title: "Electronics & Appliances",
      ),
      CategoryModel(
        imagePath: Images.car,
        title: "Cars",
      ),
      CategoryModel(
        imagePath: Images.furniture,
        title: "Furniture",
      ),
      CategoryModel(
        imagePath: Images.electronics,
        title: "Electronics & Appliances",
      ),
    ];
    List<TopVendorsModel> topVendorsList = [
      TopVendorsModel(
        imagePath: Images.jutemill,
      ),
      TopVendorsModel(
        imagePath: Images.icas,
      ),
      TopVendorsModel(
        imagePath: Images.abstractlogo,
      ),
      TopVendorsModel(
        imagePath: Images.jutemill,
      ),
      TopVendorsModel(
        imagePath: Images.icas,
      ),
      TopVendorsModel(
        imagePath: Images.abstractlogo,
      ),
    ];
    List<NewListingsModel> newListingsList = [
      NewListingsModel(
        imagePath: Images.redcar,
        title: 'MZ ZS EV',
        amount: '₹ 1000/Per day',
        companyName: 'By Royal cars',
      ),
      NewListingsModel(
        imagePath: Images.redcar,
        title: 'Sofa',
        amount: '₹ 4000/Per day',
        companyName: 'By Royal cars',
      ),
      NewListingsModel(
        imagePath: Images.redcar,
        title: 'MZ ZS EV',
        amount: '₹ 1000/Per day',
        companyName: 'By Royal cars',
      ),
      NewListingsModel(
        imagePath: Images.redcar,
        title: 'Sofa',
        amount: '₹ 4000/Per day',
        companyName: 'By Royal cars',
      ),
    ];
    List<ImagesModel> imagesList = [
      ImagesModel(
        imagePath: Images.homeimage,
      ),
      ImagesModel(
        imagePath: Images.homeimage,
      ),
      ImagesModel(
        imagePath: Images.homeimage,
      ),
    ];
    ThemeProvider themeProvider = Get.put(ThemeProvider());

    return Scaffold(
        backgroundColor: Get.isDarkMode
            ? CommonColors.darkBackgroundColor
            : CommonColors.bgColor,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          toolbarHeight: 100.sp,
          title: Padding(
            padding: EdgeInsets.only(top: 15.sp),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 20.sp,
                  backgroundColor: CommonColors.whiteColor,
                  backgroundImage: const AssetImage(Images.mask),
                ),
                SvgPicture.asset(
                  SvgImages.rento,
                  height: 43.sp,
                  width: 108.sp,
                ),
                InkWell(
                  onTap: () {
                    Get.to(const CartScreenView());
                  },
                  child: Icon(
                    Icons.shopping_cart_rounded,
                    size: 25.sp,
                  ),
                ),
              ],
            ),
          ),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                color: CommonColors.mainColor),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(
              top: 12.sp, left: 20.sp, right: 20.sp, bottom: 20.sp),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 7.sp, right: 7.sp),
                  child: InkWell(
                    onTap: () {
                      Push.to(const SearchScreen2(), context);
                    },
                    child: searchContainer(),
                  ),
                ),
                Hbox(14.sp),
                GestureDetector(
                  child: SizedBox(
                    height: 216.sp,
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
                            child: SizedBox(
                              height: 215.sp,
                              width: double.infinity,
                              child: Image.asset(
                                imagesList[i].imagePath,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Hbox(19.sp),
                // dots and position indicator
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    imagesList.length,
                    (index) => buildDot(index: index),
                  ),
                ),
                Hbox(17.sp),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "category".tr,
                      style: Get.isDarkMode
                          ? Ts.medium16(CommonColors.whiteColor)
                          : Ts.medium16(const Color(0xff5C6267)),
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(const ProductCategoriesView());
                      },
                      child: Text(
                        "viewAll".tr,
                        style: Ts.medium16(CommonColors.blueColor),
                      ),
                    ),
                  ],
                ),
                Hbox(10.sp),
                SizedBox(
                    height: 115.sp,
                    width: double.infinity,
                    child: category(categoryList)),
                Hbox(22.sp),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "topVendors".tr,
                      style: Get.isDarkMode
                          ? Ts.medium16(CommonColors.whiteColor)
                          : Ts.medium16(const Color(0xff373E44)),
                    ),
                    Text(
                      "viewAll".tr,
                      style: Ts.medium16(CommonColors.blueColor),
                    ),
                  ],
                ),
                Hbox(18.sp),
                SizedBox(
                  height: 115.sp,
                  width: double.infinity,
                  child: vendors(topVendorsList),
                ),
                Hbox(28.sp),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "newListing".tr,
                      style: Get.isDarkMode
                          ? Ts.semiBold16(CommonColors.whiteColor)
                          : Ts.semiBold16(const Color(0xff373E44)),
                    ),
                    Text(
                      "viewAll".tr,
                      style: Ts.medium16(CommonColors.blueColor),
                    ),
                  ],
                ),
                Hbox(18.sp),
                SizedBox(
                  height: 235.sp,
                  //width: double.infinity,
                  child: newListings(newListingsList),
                ),
              ],
            ),
          ),
        ));
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: _currentPage == index ? 12 : 6,
      decoration: BoxDecoration(
        color: _currentPage == index
            ? CommonColors.mainColor
            : CommonColors.greyColor,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}

Widget searchContainer() {
  return Container(
    height: 60.sp,
    decoration: BoxDecoration(
      color: CommonColors.whiteColor,
      borderRadius: BorderRadius.circular(5.sp),
    ),
    child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Image.asset(
        Images.search1,
        scale: 4,
      ),
      Wbox(5.sp),
      Text(
        "search".tr,
        style: Ts.medium16(const Color(0xff959595)),
      ),
    ]),
  );
}

Widget category(categoryList) {
  return ListView.builder(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: categoryList.length,
      itemBuilder: (ctx, i) {
        return InkWell(
          onTap: () {},
          child: Padding(
            padding: EdgeInsets.only(right: 10.sp),
            child: Container(
                decoration: BoxDecoration(
                  color: CommonColors.whiteColor,
                  borderRadius: BorderRadius.circular(25.sp),
                ),
                height: 114.sp,
                width: 114.sp,
                //padding: EdgeInsets.symmetric(horizontal: 35.sp, vertical: 30.sp),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        categoryList[i].imagePath,
                        height: 47.sp,
                        width: 47.sp,
                      ),
                      Hbox(5.sp),
                      Text(categoryList[i].title,
                          textAlign: TextAlign.center,
                          style: Ts.medium12(const Color(0xff5C6267))),
                    ],
                  ),
                )),
          ),
        );
      });
}

Widget vendors(topVendorsList) {
  return GetBuilder<HomeController>(builder: (controller) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: topVendorsList.length,
        itemBuilder: (ctx, i) {
          return InkWell(
            onTap: () {
              controller.vendors();
            },
            child: Padding(
              padding: EdgeInsets.only(right: 10.sp),
              child: Image.asset(
                topVendorsList[i].imagePath,
                height: 106.sp,
                width: 106.sp,
              ),
            ),
          );
        });
  });
}

Widget newListings(newListingsList) {
  return GetBuilder<HomeController>(builder: (controller) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: newListingsList.length,
        itemBuilder: (ctx, i) {
          return InkWell(
            onTap: () {
              controller.newListing();
            },
            child: Padding(
                padding: EdgeInsets.only(right: 10.sp),
                child: Container(
                  height: 213.sp,
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
                              newListingsList[i].imagePath,
                              height: 150.sp,
                              width: 190.sp,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                              left: 140.sp,
                              top: 14.sp,
                              right: 15.sp,
                              child: Icon(
                                Icons.favorite_border_outlined,
                                color:
                                    const Color(0xff4E4E4E).withOpacity(0.62),
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
                              newListingsList[i].title,
                              style: Get.isDarkMode
                                  ? Ts.medium14(CommonColors.mainColor)
                                  : Ts.medium14(const Color(0xff44474A)),
                            ),
                            Hbox(4.sp),
                            Text(
                              newListingsList[i].amount,
                              style: Get.isDarkMode
                                  ? Ts.regular10(CommonColors.whiteColor)
                                  : Ts.regular10(CommonColors.mainColor),
                            ),
                            Hbox(4.sp),
                            Text(
                              newListingsList[i].companyName,
                              style: Ts.regular10(const Color(0xffA5A7AA)),
                            ),
                            Hbox(14.sp),
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
          );
        });
  });
}
