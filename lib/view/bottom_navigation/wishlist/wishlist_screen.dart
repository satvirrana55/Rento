import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/models/wishlist/wishlist_model.dart';
import 'package:rento/themes/themes.dart';
import 'package:rento/utility_funtions.dart/size.dart';
import 'package:rento/utility_funtions.dart/ts.dart';

import '../../../components/images.dart';
import '../home/cart_screen/cart_screen_view.dart';

class WishlistScreen extends StatefulWidget {
  const WishlistScreen({Key? key}) : super(key: key);

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  @override
  List<Wishlist> wistList = [
    Wishlist(
      imagePath: Images.redcar,
      name: 'MZ ZS EV',
      price: '₹ 1000/Per day',
      companyname: 'By Royal cars',
    ),
    Wishlist(
      imagePath: Images.redcar,
      name: 'MZ ZS EV',
      price: '₹ 1000/Per day',
      companyname: 'By Royal cars',
    ),
    Wishlist(
      imagePath: Images.redcar,
      name: 'MZ ZS EV',
      price: '₹ 1000/Per day',
      companyname: 'By Royal cars',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Get.put(ThemeProvider());

    return Scaffold(
      backgroundColor: Get.isDarkMode
          ? CommonColors.darkBackgroundColor
          : const Color(0xffF3F3F3),
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
                                wistList[i].imagePath,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                                left: 140.sp,
                                top: 13.sp,
                                right: 15.sp,
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.red,
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
                                wistList[i].name,
                                style: Ts.semiBold14(CommonColors.mainColor),
                              ),
                              Hbox(4.sp),
                              Text(
                                wistList[i].companyname,
                                style: Get.isDarkMode
                                    ? Ts.regular10(CommonColors.greyDark1)
                                    : Ts.regular10(const Color(0xffA5A7AA)),
                              ),
                              Hbox(4.sp),
                              Text(
                                wistList[i].price,
                                style: Get.isDarkMode
                                    ? Ts.regular10(CommonColors.greyDark2)
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
}
