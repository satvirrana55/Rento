import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Hbox extends StatelessWidget {
  final double h;
  final double? width;
  const Hbox(this.h, {this.width, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: h.h,
      width: width?.w,
    );
  }
}

class Wbox extends StatelessWidget {
  final double w;
  final double? height;
  const Wbox(this.w, {this.height, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: w.w,
      height: height?.h,
    );
  }
}
