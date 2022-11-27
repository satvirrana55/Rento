import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/utility_funtions.dart/size.dart';
import 'package:rento/utility_funtions.dart/ts.dart';
import 'package:rento/view/service_provider/common/comman_app_bar.dart';
import 'package:rento/view/service_provider/dashboard/transactions/components/transacation_recived_card.dart';
import 'package:rento/view/service_provider/dashboard/transactions/components/transaction_row_card.dart';
import 'package:rento/view/service_provider/dashboard/transactions/components/transcations_column_card.dart';

class Transactions extends StatefulWidget {
  const Transactions({Key? key}) : super(key: key);

  @override
  State<Transactions> createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: CommonAppBar(
          elevation: 0.5,
          tittle: 'transactions'.tr,
        ),
      ),
      backgroundColor: Get.isDarkMode
          ? CommonColors.darkBackgroundColor
          : CommonColors.primaryBackgroundColor,
      body: Padding(
        padding: EdgeInsets.only(
            left: 20.sp, right: 20.sp, top: 14.sp, bottom: 29.sp),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'overallPayment'.tr,
                style: Get.isDarkMode
                    ? Ts.semiBold13(CommonColors.whiteColor)
                    : Ts.semiBold13(CommonColors.primaryGrey),
              ),
              Hbox(12.sp),
              Row(children: const [
                TranscationRowCard(),
                Spacer(flex: 1),
                TransationsColoumnCard(),
              ]),
              Hbox(16.sp),
              Text(
                'recentPay'.tr,
                style: Get.isDarkMode
                    ? Ts.semiBold13(CommonColors.whiteColor)
                    : Ts.semiBold13(CommonColors.primaryGrey),
              ),
              Hbox(12.sp),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [const TransacationRecivedCard(), Hbox(13.sp)],
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
