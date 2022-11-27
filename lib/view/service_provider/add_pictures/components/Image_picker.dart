import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:async';

import 'package:rento/components/images.dart';
import 'package:rento/helpers/common_colors.dart';

class Imagepicker extends StatefulWidget {
  final Function? getImageFromParent;

  const Imagepicker({Key? key, this.getImageFromParent}) : super(key: key);
  @override
  _ImagepickerState createState() => _ImagepickerState();
}

class _ImagepickerState extends State<Imagepicker> {
  String? _image;

  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await (picker.pickImage(
      source: ImageSource.camera,
    ));
    String newFile;
    setState(() {
      if (pickedFile != null) {
        _image = pickedFile.path;
        newFile = pickedFile.path.split("/").last;
        //widget.getImageFromParent!(newFile);
      } else {}
    });
  }

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: getImage,
      child: Container(
        decoration: BoxDecoration(
            color: Get.isDarkMode
                ? CommonColors.lightDark1
                : const Color.fromRGBO(255, 255, 255, 1),
            border: Border.all(
              color: Get.isDarkMode
                  ? CommonColors.lightDark1
                  : const Color.fromRGBO(255, 255, 255, 1),
            )),
        width: MediaQuery.of(context).size.width / 2.2,
        height: 190.sp,
        child: _image == null
            ? Image.asset(
                Images.cameraIcon,
                height: 50.68.sp,
                width: 62.16.sp,
              )
            : Image.file(File(_image!)),
      ),
    );
  }
}
