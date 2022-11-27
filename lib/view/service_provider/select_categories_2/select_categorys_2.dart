import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/view/service_provider/add_pictures/add_picture.dart';
import 'package:rento/view/service_provider/common/comman_app_bar.dart';
import 'package:rento/view/service_provider/common/common_button.dart';
import 'package:rento/view/service_provider/select_categories_2/components/categories_list.dart';

class SelectCategoryScreen extends StatefulWidget {
  const SelectCategoryScreen({Key? key}) : super(key: key);

  @override
  State<SelectCategoryScreen> createState() => _SelectCategoryScreenState();
}

class _SelectCategoryScreenState extends State<SelectCategoryScreen> {
  List<dynamic> listData = [
    "cars".tr,
    "Bikes",
    "Computer & Laptop",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50.0),
        child: CommonAppBar(
          tittle: 'selectCategoriesAppBar'.tr,
          value: 'skip'.tr,
          color: Get.isDarkMode
              ? CommonColors.primaryTextColor
              : CommonColors.blackColor,
          elevation: 0.5,
        ),
      ),
      backgroundColor:
          Get.isDarkMode ? CommonColors.darkBackgroundColor : Colors.white,
      body: Column(
        children: [
          ListView.builder(
              shrinkWrap: true,
              itemCount: listData.length,
              itemBuilder: (context, index) {
                return CategoriesList(
                  text: listData[index],
                );
              }),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 25, left: 20, right: 17),
        child: CommonButton(
          tittle: "addProductButton".tr,
          navigator: const AddPictures(),
        ),
      ),
    );
  }
}
