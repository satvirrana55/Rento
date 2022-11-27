import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/view/service_provider/common/comman_app_bar.dart';

import '../common/common_button.dart';
import '../product_details/product_details.dart';
import 'components/Image_picker.dart';
import 'components/add_picture_card.dart';

class AddPictures extends StatefulWidget {
  const AddPictures({Key? key}) : super(key: key);

  @override
  State<AddPictures> createState() => _AddPicturesState();
}

class _AddPicturesState extends State<AddPictures> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: CommonAppBar(
          tittle: "addPicturesAppBar".tr,
          color: Colors.transparent,
        ),
      ),
      backgroundColor: Get.isDarkMode
          ? CommonColors.darkBackgroundColor
          : CommonColors.primaryBackgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 14,
          ),
          child: Center(
            child: Wrap(
              spacing: 7,
              runSpacing: 9,
              children: const [
                Imagepicker(),
                AddPicturesCard(),
                AddPicturesCard(),
                AddPicturesCard(),
                AddPicturesCard(),
                AddPicturesCard(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 25, left: 20, right: 20),
        child: CommonButton(
          tittle: "continueButton".tr,
          navigator: const ProductDetails(),
        ),
      ),
    );
  }
}
