import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/utility_funtions.dart/navigator_helper.dart';
import 'package:rento/utility_funtions.dart/size.dart';
import 'package:rento/view/service_provider/dashboard/new_orders/new_order_detalis/new_order_details.dart';

import '../../common/comman_app_bar.dart';
import '../order_history/order_history.dart';
import 'components/new_order_card.dart';

class NewOrder extends StatefulWidget {
  const NewOrder({Key? key}) : super(key: key);

  @override
  State<NewOrder> createState() => _NewOrderState();
}

class _NewOrderState extends State<NewOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: CommonAppBar(
            tittle: "newOrders".tr,
            value: "orderHistory".tr,
            color: Get.isDarkMode
                ? CommonColors.primaryButtonColor
                : CommonColors.blueColor,
            navigator: OrderHistory(),
          ),
        ),
        backgroundColor: Get.isDarkMode
            ? CommonColors.darkBackgroundColor
            : CommonColors.primaryBackgroundColor,
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 2,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    InkWell(
                        onTap: () {
                          Push.to(const NewOrderDetailsScreen(), context);
                        },
                        child: const NewOrdersCard()),
                    const Hbox(19.5),
                  ],
                );
              }),
        ));
  }
}
