import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rento/components/images.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/utility_funtions.dart/ts.dart';

import '../../../../../models/home/image_model.dart';
import '../../../common/comman_app_bar.dart';
import 'components/product_details_list_card.dart';

class ActiveProductDetails extends StatefulWidget {
  const ActiveProductDetails({Key? key}) : super(key: key);

  @override
  State<ActiveProductDetails> createState() => _ActiveProductDetailsState();
}

class _ActiveProductDetailsState extends State<ActiveProductDetails> {
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
      width: _currentPage == index ? 20 : 6,
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
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: CommonAppBar(
          tittle: "productslist".tr,
          elevation: 0,
        ),
      ),
      backgroundColor: Get.isDarkMode
          ? CommonColors.darkBackgroundColor
          : CommonColors.primaryBackgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
              child: ProductDetailsListCard(
            status: "active".tr,
            statusColor: Get.isDarkMode
                ? const Color.fromRGBO(18, 203, 86, 1)
                : CommonColors.primaryTextColor,
          )),
        ],
      ),
      bottomNavigationBar: Container(
        height: 77.sp,
        decoration: BoxDecoration(
          color: Get.isDarkMode
              ? CommonColors.blackColor
              : CommonColors.whiteColor,
          border: Border(
              top: BorderSide(
                  width: 0.5,
                  color:
                      Get.isDarkMode ? CommonColors.greyColor5 : Colors.white)),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 0, right: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  height: 48.sp,
                  width: MediaQuery.of(context).size.width * .44,
                  decoration: BoxDecoration(
                    color: CommonColors.blueColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                    child: Text(
                      "edit".tr,
                      style: Ts.semiBold14(CommonColors.whiteColor),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              const SizedBox(
                width: 6,
              ),
              Center(
                child: Container(
                  height: 48.sp,
                  width: MediaQuery.of(context).size.width * .44,
                  decoration: BoxDecoration(
                    color: CommonColors.primaryRed,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                    child: Text(
                      "inactive".tr,
                      style: Ts.semiBold14(CommonColors.whiteColor),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
