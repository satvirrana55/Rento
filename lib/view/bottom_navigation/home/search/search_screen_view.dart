import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rento/components/images.dart';
import 'package:rento/controller/search/search_controller.dart';
import 'package:rento/models/search/search_model.dart';
import 'package:rento/utility_funtions.dart/size.dart';
import 'package:rento/utility_funtions.dart/ts.dart';

import '../../../../components/chip_widget.dart';
import '../../../../helpers/common_colors.dart';

class SearchScreenView extends StatefulWidget {
  const SearchScreenView({Key? key}) : super(key: key);

  @override
  State<SearchScreenView> createState() => _SearchScreenViewState();
}

class _SearchScreenViewState extends State<SearchScreenView> {
  final TextEditingController searchController = TextEditingController();
  final SearchController _searchController =
      Get.isRegistered<SearchController>()
          ? Get.find<SearchController>()
          : Get.put(SearchController());
  List<dynamic> categoryList = [
    "All",
    "Cars",
    "Home appliance",
    "Bikes",
    "Furniture",
    "Computer & Laptop",
    "Fashion",
    "Properties"
  ];
  List<SearchModel> searchList = [
    SearchModel(
      imagePath: Images.redcar,
      name: 'MZ ZS EV',
      price: '₹ 1000/Per day',
      companyname: 'By Royal cars',
    ),
    SearchModel(
      imagePath: Images.chair,
      name: 'MZ ZS EV',
      price: '₹ 1000/Per day',
      companyname: 'By Royal cars',
    ),
    SearchModel(
      imagePath: Images.ac,
      name: 'MZ ZS EV',
      price: '₹ 1000/Per day',
      companyname: 'By Royal cars',
    ),
    SearchModel(
      imagePath: Images.laptop,
      name: 'MZ ZS EV',
      price: '₹ 1000/Per day',
      companyname: 'By Royal cars',
    ),
    SearchModel(
      imagePath: Images.bike,
      name: 'MZ ZS EV',
      price: '₹ 1000/Per day',
      companyname: 'By Royal cars',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 1,
          backgroundColor: Get.isDarkMode
              ? CommonColors.blackColor
              : CommonColors.whiteColor,
          automaticallyImplyLeading: true,
          leading: InkWell(
              onTap: () {
                Get.back();
              },
              child: Icon(Icons.arrow_back,
                  color: Get.isDarkMode
                      ? CommonColors.whiteColor
                      : CommonColors.blackColor)),
          title: SizedBox(
            height: 46.sp,
            width: double.infinity,
            child: TextField(
              controller: searchController,
              decoration: InputDecoration(
                  fillColor: CommonColors.whiteColor,
                  filled: true,
                  enabledBorder: const OutlineInputBorder(
                    borderSide:
                        BorderSide(color: CommonColors.greyColor5, width: 0.0),
                  ),
                  prefixIcon: Image.asset(
                    Images.search1,
                    scale: 3,
                  ),
                  suffixIcon: InkWell(
                    onTap: () {
                      _searchController.gotonextScreen();
                    },
                    child: const Icon(
                      Icons.cancel,
                      color: CommonColors.greyColor6,
                    ),
                  ),
                  label: Text(
                    "search".tr,
                    style: Ts.medium16(CommonColors.greyColor5),
                  )),
            ),
          ),
        ),
        backgroundColor: Get.isDarkMode
            ? CommonColors.darkBackgroundColor
            : CommonColors.bgColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Get.isDarkMode
                    ? CommonColors.blackColor
                    : CommonColors.whiteColor,
                height: 80.sp,
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.only(left: 20.sp),
                  child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: List<Widget>.generate(
                        categoryList.length,
                        (index) {
                          return ChipWidget(label: categoryList[index]);
                        },
                      )),
                ),
              ),
              searchWidget(searchList),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          color: Get.isDarkMode
              ? CommonColors.blackColor
              : CommonColors.whiteColor,
          height: 62.sp,
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.only(bottom: 15.sp, top: 15.sp),
            child: IntrinsicHeight(
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 2.2,
                    color: Get.isDarkMode
                        ? CommonColors.blackColor
                        : CommonColors.whiteColor,
                    child: InkWell(
                      onTap: () {
                        _searchController.sort();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            Images.sort,
                            scale: 3,
                            color: Get.isDarkMode
                                ? CommonColors.primaryTextColor
                                : CommonColors.blackColor,
                          ),
                          const Wbox(13),
                          Text(
                            "sortBy".tr,
                            style: Get.isDarkMode
                                ? Ts.semiBold14(CommonColors.primaryTextColor)
                                : Ts.semiBold14(CommonColors.blackColor),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const VerticalDivider(
                    color: CommonColors.greyColor,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2.2,
                    color: Get.isDarkMode
                        ? CommonColors.blackColor
                        : CommonColors.whiteColor,
                    child: InkWell(
                      onTap: () {
                        _searchController.filter();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            Images.filter,
                            scale: 3,
                            color: Get.isDarkMode
                                ? CommonColors.primaryTextColor
                                : CommonColors.blackColor,
                          ),
                          const Wbox(13),
                          Text(
                            "filter".tr,
                            style: Get.isDarkMode
                                ? Ts.semiBold14(CommonColors.primaryTextColor)
                                : Ts.semiBold14(CommonColors.blackColor),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

Widget searchWidget(searchList) {
  return SizedBox(
    height: 655.sp,
    child: Padding(
      padding:
          EdgeInsets.only(left: 20.sp, right: 20.sp, top: 12.sp, bottom: 12.sp),
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.7 / 2,
              crossAxisSpacing: 20.sp,
              mainAxisSpacing: 20.sp),
          itemCount: searchList.length,
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
                            searchList[i].imagePath,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                            left: 140.sp,
                            top: 14.sp,
                            right: 15.sp,
                            child: Icon(
                              Icons.favorite_border_outlined,
                              color: const Color(0xff4E4E4E).withOpacity(0.62),
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
                            searchList[i].name,
                            style: Ts.semiBold14(CommonColors.mainColor),
                          ),
                          Hbox(4.sp),
                          Text(
                            searchList[i].companyname,
                            style: Get.isDarkMode
                                ? Ts.regular10(CommonColors.greyDark1)
                                : Ts.regular10(const Color(0xffA5A7AA)),
                          ),
                          Hbox(4.sp),
                          Text(
                            searchList[i].price,
                            style: Get.isDarkMode
                                ? Ts.regular11(CommonColors.whiteColor)
                                : Ts.regular11(const Color(0xff61666A)),
                          ),
                          Hbox(11.sp),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    ),
  );
}
