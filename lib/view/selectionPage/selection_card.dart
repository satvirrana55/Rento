import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rento/utility_funtions.dart/size.dart';
import 'package:rento/utility_funtions.dart/ts.dart';

import '../../helpers/common_colors.dart';

class SelectionCard {
  SelectionCard(this.title, this.onPress);
  String? title;
  void Function() onPress;
}

class SelectionTypeCard extends StatelessWidget {
  final SelectionCard card;

  const SelectionTypeCard(this.card, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: card.onPress,
          child: Container(
              decoration: BoxDecoration(
                color: CommonColors.whiteColor,
                borderRadius: BorderRadius.circular(7.sp),
              ),
              height: 77.sp,
              width: 355.sp,
              //padding: EdgeInsets.symmetric(horizontal: 35.sp, vertical: 30.sp),
              child: Center(
                child: Text(
                  card.title ?? '',
                  style: Ts.semiBold24(CommonColors.blackColor),
                ),
              )),
        ),
        const Hbox(30),
      ],
    );
  }
}
