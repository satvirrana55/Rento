import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/utility_funtions.dart/ts.dart';

class StatusBage extends StatelessWidget {
  final String? textName;
  final Color? color;
  final int? height;
  final int? width;

  const StatusBage(
      {this.color, this.textName, this.height, this.width, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            "assets/svgimages/clipper.svg",
            height: 22.sp,
            color: color,
          ),
          Container(
            constraints: BoxConstraints(maxWidth: 90.w),
            height: 22.sp,
            width: 50,
            decoration: BoxDecoration(
              color: color ?? CommonColors.mainColor,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
            child: AutoSizeText(
              textName!,
              style: Ts.semiBold12(Colors.white),
              textAlign: TextAlign.center,
              maxLines: 2,
              minFontSize: 2,
            ),
          ),
        ],
      ),
    );
  }
}

class ArcClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width * .03, size.height);
    path.quadraticBezierTo(
        size.width * .2, size.height * .5, size.width * .03, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => false;
}
