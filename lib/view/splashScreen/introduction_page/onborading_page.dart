import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/utility_funtions.dart/size.dart';
import 'package:rento/view/splashScreen/introduction_page/introduction_screen_view.dart';

import '../../../components/images.dart';
import '../../../utility_funtions.dart/ts.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
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
              Center(
                child: SizedBox(
                  height: 156.sp,
                  child: InkWell(
                      onTap: () {
                        Get.to(() => const IntroductionScreenView());
                      },
                      child: Image.asset(
                        Images.rento,
                        scale: 3,
                      )),
                ),
              ),
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
      bottomNavigationBar: Container(
          color: CommonColors.whiteColor,
          height: 57.sp,
          child: Center(
              child: Image.asset(
            Images.calidig,
            scale: 12,
          ))),
    );
  }
}
