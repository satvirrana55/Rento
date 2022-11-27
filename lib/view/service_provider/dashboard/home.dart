import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:rento/components/images.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/utility_funtions.dart/navigator_helper.dart';
import 'package:rento/utility_funtions.dart/size.dart';
import 'package:rento/view/service_provider/dashboard/components/add_dashboard_card.dart';
import 'package:rento/view/service_provider/dashboard/components/profile_card.dart';
import 'package:rento/view/service_provider/dashboard/drawer/drawer.dart';
import 'package:rento/view/service_provider/dashboard/new_orders/new_orders.dart';
import 'package:rento/view/service_provider/dashboard/notification/notification.dart';
import 'package:rento/view/service_provider/dashboard/order_history/order_history.dart';
import 'package:rento/view/service_provider/dashboard/product_list/product_list.dart';
import 'package:rento/view/service_provider/dashboard/product_on_rent/product_on_rent.dart';
import 'package:rento/view/service_provider/dashboard/revenue/revenue.dart';
import 'package:rento/view/service_provider/dashboard/transactions/transactions.dart';

class ServiceProviderDashoard extends StatefulWidget {
  const ServiceProviderDashoard({Key? key}) : super(key: key);

  @override
  State<ServiceProviderDashoard> createState() =>
      _ServiceProviderDashoardState();
}

class _ServiceProviderDashoardState extends State<ServiceProviderDashoard> {
  Future<bool?> _onBackPressed() async {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Are you sure?'),
        content: const Text('Do you want to exit an App'),
        actions: <Widget>[
          GestureDetector(
            onTap: () => Navigator.of(context).pop(false),
            child: const Text("NO"),
          ),
          const SizedBox(height: 16),
          GestureDetector(
            onTap: () => Navigator.of(context).pop(true),
            child: const Text("YES"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final show = await _onBackPressed();
        return show ?? false;
      },
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.5,
          title: SvgPicture.asset(
            SvgImages.rento,
            height: 33.sp,
            width: 98.sp,
            color: CommonColors.primaryTextColor,
          ),
          backgroundColor: Get.isDarkMode
              ? context.theme.primaryColor
              : CommonColors.whiteColor,
          centerTitle: true,
          iconTheme: const IconThemeData(color: CommonColors.blackColor),
          leading: Builder(builder: (BuildContext context) {
            return Padding(
              padding: EdgeInsets.only(left: 20.sp, top: 5),
              child: SizedBox(
                height: 16.sp,
                width: 17.sp,
                child: InkWell(
                    onTap: () {
                      Scaffold.of(context).openDrawer();
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            width: 17,
                            height: 2,
                            color: Get.isDarkMode
                                ? CommonColors.primaryButtonColor
                                : CommonColors.primaryLightdark1),
                        Hbox(7.sp),
                        Container(
                            width: 13,
                            height: 2,
                            color: Get.isDarkMode
                                ? CommonColors.primaryButtonColor
                                : CommonColors.primaryLightdark1),
                        Hbox(7.sp),
                        Container(
                            width: 17,
                            height: 2,
                            color: Get.isDarkMode
                                ? CommonColors.primaryButtonColor
                                : CommonColors.primaryLightdark1)
                      ],
                    )),
              ),
            );
          }),
          actions: [
            IconButton(
                onPressed: () {
                  Push.to(const NotificationScreen(), context);
                },
                icon: Icon(
                  Icons.notifications_outlined,
                  color: Get.isDarkMode
                      ? CommonColors.whiteColor
                      : CommonColors.blackColor,
                ))
          ],
        ),
        drawer: const ServiceProviderDrawer(),
        backgroundColor: Get.isDarkMode
            ? context.theme.backgroundColor
            : CommonColors.primaryBackgroundColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const ProfileCard(),
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5, top: 15),
                child: Wrap(
                  spacing: 10.sp,
                  runSpacing: 15.sp,
                  children: [
                    InkWell(
                      onTap: () {
                        Push.to(const NewOrder(), context);
                      },
                      child: AddDashBoardCard(
                        image: Images.newOrders,
                        title: "newOrders".tr,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Push.to(const ProductOnRent(), context);
                      },
                      child: AddDashBoardCard(
                        image: Images.rent,
                        title: "productOnRent".tr,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Push.to(const ProductList(), context);
                      },
                      child: AddDashBoardCard(
                        image: Images.productList,
                        title: "productList".tr,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Push.to(const OrderHistory(), context);
                      },
                      child: AddDashBoardCard(
                        image: Images.cancelOrders,
                        title: "cancelledOrders".tr,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Push.to(Revenue(), context);
                      },
                      child: AddDashBoardCard(
                        image: Images.revenue,
                        title: "revenue".tr,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Push.to(const Transactions(), context);
                      },
                      child: AddDashBoardCard(
                        image: Images.trans,
                        title: "transactions".tr,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
