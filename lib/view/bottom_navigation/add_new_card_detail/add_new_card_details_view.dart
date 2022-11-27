import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rento/components/buttons.dart';
import 'package:rento/components/textbox.dart';
import 'package:rento/controller/add_new_card_detail/add_new_card_details_controller.dart';
import 'package:rento/utility_funtions.dart/size.dart';
import 'package:rento/utility_funtions.dart/ts.dart';

import '../../../helpers/common_colors.dart';
import '../../service_provider/common/comman_app_bar.dart';

class AddNewCardDetailsView extends StatefulWidget {
  const AddNewCardDetailsView({Key? key}) : super(key: key);

  @override
  State<AddNewCardDetailsView> createState() => _AddNewCardDetailsViewState();
}

class _AddNewCardDetailsViewState extends State<AddNewCardDetailsView> {
  final AddNewCardDetailController _addNewCardDetController =
      Get.isRegistered<AddNewCardDetailController>()
          ? Get.find<AddNewCardDetailController>()
          : Get.put(AddNewCardDetailController());
  String? currentState = "state".tr;
  String? currentCity = "city".tr;

  List<String> state = ["state".tr, "MP"];

  List<String> city = ["city".tr, "Indore"];
  bool home = false;
  bool office = false;
  bool others = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.isDarkMode
          ? CommonColors.darkBackgroundColor
          : const Color(0xffF3F3F3),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.sp),
        child: CommonAppBar(
            tittle: "addAddress".tr,
            color: Colors.transparent,
            elevation: Get.isDarkMode ? 0.5 : 0),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.sp),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Get.isDarkMode
                  ? CommonColors.lightDark1
                  : CommonColors.whiteColor),
          height: 670.sp,
          child: Padding(
            padding: EdgeInsets.only(
                left: 18.sp, right: 18.sp, top: 24.sp, bottom: 24.sp),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  UnderLineTextField(
                    label: "houseNumber".tr,
                  ),
                  UnderLineTextField(
                    label: "streetSector".tr,
                  ),
                  UnderLineTextField(
                    label: "area".tr,
                  ),
                  const Hbox(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 160.sp,
                        child: Column(
                          children: [
                            DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                isExpanded: true,
                                icon: const Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: CommonColors.greyColor,
                                ),
                                iconEnabledColor: CommonColors.mainColor,
                                value: currentState,
                                isDense: true,
                                onChanged: (newValue) {
                                  setState(() {
                                    currentState = newValue;
                                  });
                                },
                                items: state.map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style: Get.isDarkMode
                                          ? Ts.medium14(CommonColors.greyDark2)
                                          : Ts.medium14(CommonColors.greyColor),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                            const Hbox(7),
                            const Divider(
                              color: CommonColors.greyColor,
                            )
                          ],
                        ),
                      ),
                      //Wbox(10),
                      SizedBox(
                        width: 160.sp,
                        child: Column(
                          children: [
                            DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                isExpanded: true,
                                icon: const Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: CommonColors.greyColor,
                                ),
                                value: currentCity,
                                isDense: true,
                                onChanged: (newValue) {
                                  setState(() {
                                    currentCity = newValue;
                                  });
                                },
                                items: city.map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style: Get.isDarkMode
                                          ? Ts.medium14(CommonColors.greyDark2)
                                          : Ts.medium14(CommonColors.greyColor),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                            const Hbox(7),
                            const Divider(
                              color: CommonColors.greyColor,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  UnderLineTextField(
                    label: "pinCode".tr,
                  ),
                  UnderLineTextField(
                    label: "mobile".tr,
                    prefix: Padding(
                      padding: EdgeInsets.only(top: 18.sp),
                      child: Text(
                        '+91 ',
                        style: Ts.medium16(CommonColors.greyColor),
                      ),
                    ),
                  ),
                  const Hbox(5),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            home = true;
                            office = false;
                            others = false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: home
                                ? CommonColors.mainColor
                                : Get.isDarkMode
                                    ? CommonColors.lightDark1
                                    : CommonColors.whiteColor,
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: CommonColors.mainColor),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 10, bottom: 10),
                            child: Text(
                              "home".tr,
                              style: Ts.medium14(home
                                  ? CommonColors.whiteColor
                                  : CommonColors.mainColor),
                            ),
                          ),
                        ),
                      ),
                      const Wbox(10),
                      InkWell(
                        onTap: () {
                          setState(() {
                            home = false;
                            office = true;
                            others = false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: office
                                ? CommonColors.mainColor
                                : Get.isDarkMode
                                    ? CommonColors.lightDark1
                                    : CommonColors.whiteColor,
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                                color: office
                                    ? CommonColors.whiteColor
                                    : CommonColors.mainColor),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 10, bottom: 10),
                            child: Text(
                              "office".tr,
                              style: Ts.medium14(office
                                  ? CommonColors.whiteColor
                                  : CommonColors.mainColor),
                            ),
                          ),
                        ),
                      ),
                      const Wbox(10),
                      InkWell(
                        onTap: () {
                          setState(() {
                            home = false;
                            office = false;
                            others = true;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: others
                                ? CommonColors.mainColor
                                : Get.isDarkMode
                                    ? CommonColors.lightDark1
                                    : CommonColors.whiteColor,
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: CommonColors.mainColor),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 10, bottom: 10),
                            child: Text(
                              "other".tr,
                              style: Ts.medium14(others
                                  ? CommonColors.whiteColor
                                  : CommonColors.mainColor),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Hbox(5),
                  UnderLineTextField(
                    label: "typeOtheroptions".tr,
                  ),
                  const Hbox(5),
                  BasicButton(
                    textName: "save".tr,
                    width: double.infinity,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
