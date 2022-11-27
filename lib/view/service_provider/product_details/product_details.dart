import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/view/service_provider/account_sucessfully/account_succssfully_create.dart';
import 'package:rento/view/service_provider/common/comman_app_bar.dart';
import 'package:rento/view/service_provider/common/common_button.dart';
import 'package:rento/view/service_provider/common/dropdown.dart';
import 'package:rento/view/service_provider/common/text_field.dart';
import 'package:rento/view/service_provider/components/text_form_field.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  TextEditingController description = TextEditingController();
  TextEditingController termsUse = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: CommonAppBar(
          tittle: 'prodDet'.tr,
          color: Colors.transparent,
          elevation: 0.5,
        ),
      ),
      backgroundColor: Get.isDarkMode
          ? CommonColors.darkBackgroundColor
          : CommonColors.whiteColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 18),
          child: Column(
            children: [
              EntryTextField(
                label: "prodname".tr,
              ),
              EntryTextField(
                label: "rentalPrice".tr,
              ),
              const SizedBox(
                height: 11,
              ),
              TextFieldForm(
                controller: description,
                textvalue: 'desc'.tr,
              ),
              const SizedBox(
                height: 11,
              ),
              const DropDown(),
              const SizedBox(
                height: 11,
              ),
              TextFieldForm(
                controller: termsUse,
                textvalue: 'termsofUse'.tr,
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 25, left: 20, right: 17),
        child: CommonButton(
          tittle: "continueButton".tr,
          navigator: const AccountCreateSuccessfully(),
        ),
      ),
    );
  }
}
