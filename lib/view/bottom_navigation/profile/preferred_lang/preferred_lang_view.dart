import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rento/components/buttons.dart';
import 'package:rento/utility_funtions.dart/size.dart';
import 'package:rento/utility_funtions.dart/ts.dart';

import '../../../../helpers/common_colors.dart';
import '../../../service_provider/common/comman_app_bar.dart';

class PreferredLanguageView extends StatefulWidget {
  const PreferredLanguageView({Key? key}) : super(key: key);

  @override
  State<PreferredLanguageView> createState() => _PreferredLanguageViewState();
}

class _PreferredLanguageViewState extends State<PreferredLanguageView> {
  List<Locale> languageMap = const [
    Locale('en', 'US'),
    Locale('de', 'DE'),
    Locale('hi', 'IN')
  ];
  Map<Locale, String> locale = {
    const Locale('en', 'US'): "english".tr,
    const Locale('de', 'DE'): "german".tr,
    const Locale('hi', 'IN'): "hindi".tr,
  };
  Locale selectedLocale = const Locale('en', 'US');
  updateLang(Locale? locale) {
    Get.updateLocale(locale!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.isDarkMode
          ? CommonColors.darkBackgroundColor
          : CommonColors.bgColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.sp),
        child: CommonAppBar(
          tittle: "changePreferredLanguage".tr,
          color: CommonColors.blackColor,
          elevation: Get.isDarkMode ? 0.5 : 0,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              "language_des".tr,
              style: Get.isDarkMode
                  ? Ts.semiBold16(CommonColors.whiteColor)
                  : Ts.semiBold16(CommonColors.blackColor),
            ),
            const Hbox(30),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Get.isDarkMode
                    ? CommonColors.lightDark1
                    : CommonColors.whiteColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.all(15.sp),
                child: Column(
                  children: [
                    const Hbox(30),
                    DropdownButtonHideUnderline(
                      child: DropdownButton<Locale>(
                        isExpanded: true,
                        icon: const Icon(
                          Icons.keyboard_arrow_down,
                          size: 20,
                          color: Color(0xffADB3B7),
                        ),
                        value: selectedLocale,
                        isDense: true,
                        onChanged: (newValue) {
                          setState(() {
                            selectedLocale = newValue!;
                          });
                        },
                        items: languageMap.map((Locale value) {
                          return DropdownMenuItem<Locale>(
                            value: value,
                            child: Text(
                              locale[value] ?? '',
                              style: Ts.medium14(const Color(0xffA4A9AC)),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                    const Hbox(5),
                    Divider(color: CommonColors.greyColor.withOpacity(0.4)),
                    const Hbox(45),
                    BasicButton(
                      textName: "save".tr,
                      width: double.infinity,
                      onPressed: () {
                        updateLang(selectedLocale);
                        Get.back();
                      },
                    ),
                    const Hbox(34),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
