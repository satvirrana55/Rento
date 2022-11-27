import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:rento/components/images.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/utility_funtions.dart/size.dart';
import 'package:rento/utility_funtions.dart/ts.dart';
import 'package:rento/view/selectionPage/selection_card.dart';

import '../splashScreen/introduction_page/onborading_page.dart';
import '../splashScreen/onboardig_service_provider_page.dart';

class SelectionScreen extends StatefulWidget {
  const SelectionScreen({Key? key}) : super(key: key);

  @override
  State<SelectionScreen> createState() => _SelectionScreenState();
}

class _SelectionScreenState extends State<SelectionScreen> {
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
    final List<SelectionCard> cards = [
      SelectionCard(
        "userSection".tr,
        () => Get.to(() => const OnboardingScreen()),
      ),
      SelectionCard("serviceProvider".tr,
          () => Get.to(() => const ServiceProviderOnboardingScreen())),
    ];

    return WillPopScope(
      onWillPop: () async {
        final show = await _onBackPressed();
        return show ?? false;
      },
      child: Scaffold(
        body: Center(
          child: Stack(
            children: <Widget>[
              SizedBox(
                width: double.infinity,
                child: SvgPicture.asset(
                  fit: BoxFit.fill,
                  SvgImages.bg,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Hbox(130),
                  SizedBox(
                    width: 196.sp,
                    height: 100.sp,
                    child: SvgPicture.asset(
                      SvgImages.rento,
                      alignment: Alignment.center,
                    ),
                  ),
                  const Hbox(164),
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: cards.map((e) => SelectionTypeCard(e)).toList(),
                    ),
                  ),
                  const Hbox(220),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Center(
                    child: Text(
                      'Powered by',
                      style: Ts.regular14(CommonColors.whiteColor),
                    ),
                  ),
                  Hbox(11.sp),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
            color: CommonColors.whiteColor,
            height: 57.sp,
            child: Center(
                child: Image.asset(
              Images.calidig,
              scale: 12,
            ))),
      ),
    );
  }
}
