import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rento/components/buttons.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/utility_funtions.dart/size.dart';
import 'package:rento/utility_funtions.dart/ts.dart';
import 'package:rento/view/authentication/login/login_view.dart';

class SelectLanguage extends StatefulWidget {
  final int? index;
  const SelectLanguage({Key? key, this.index}) : super(key: key);

  @override
  State<SelectLanguage> createState() => _SelectLanguageState();
}

class _SelectLanguageState extends State<SelectLanguage> {
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
          : CommonColors.whiteColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Hbox(80),
          Padding(
            padding: EdgeInsets.only(left: 20.sp, right: 20.sp),
            child: Text(
              "welToRento".tr,
              style: Get.isDarkMode
                  ? Ts.semiBold24(CommonColors.whiteColor)
                  : Ts.semiBold24(CommonColors.blackColor),
            ),
          ),
          const Hbox(17),
          Padding(
            padding: EdgeInsets.only(left: 20.sp, right: 20.sp),
            child: Text(
              "selLan".tr,
              style: Get.isDarkMode
                  ? Ts.medium14(const Color.fromRGBO(206, 206, 206, 1))
                  : Ts.medium14(const Color(0xff797C7D)),
            ),
          ),
          const Hbox(39),
          Stack(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 55,
                margin: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                padding: const EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: CommonColors.mainColor, width: 1),
                  borderRadius: BorderRadius.circular(5),
                  shape: BoxShape.rectangle,
                ),
                child: Padding(
                  padding:
                      EdgeInsets.only(left: 23.sp, right: 19.sp, top: 8.sp),
                  child: DropdownButtonHideUnderline(
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
                        //updateLang(newValue);
                        setState(() {
                          selectedLocale = newValue!;
                        });
                      },
                      items: languageMap.map((Locale value) {
                        return DropdownMenuItem<Locale>(
                          value: value,
                          child: Text(
                            locale[value] ?? '',
                            style: Get.isDarkMode
                                ? Ts.medium14(CommonColors.whiteColor)
                                : Ts.medium14(CommonColors.blackColor),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 50,
                top: 12,
                child: Container(
                  padding: const EdgeInsets.only(bottom: 10, left: 5, right: 7),
                  color: Get.isDarkMode
                      ? CommonColors.darkBackgroundColor
                      : CommonColors.whiteColor,
                  child: Text(
                    "lan".tr,
                    style: Ts.regular10(CommonColors.mainColor),
                  ),
                ),
              ),
            ],
          ),
          const Hbox(20),
          Padding(
            padding: EdgeInsets.only(left: 48.sp, right: 64.sp),
            child: Text(
              "changLan".tr,
              textAlign: TextAlign.center,
              style: Ts.medium12(const Color(0xffA7A7A7)),
            ),
          ),
          const Hbox(41),
          Padding(
            padding: EdgeInsets.only(left: 20.sp, right: 20.sp),
            child: BasicButton(
              onPressed: () {
                if (widget.index == 0) {
                  updateLang(selectedLocale);
                  Get.to(() => const LoginView(
                        index: 0,
                      ));
                } else if (widget.index == 1) {
                  updateLang(selectedLocale);
                  Get.to(() => const LoginView(
                        index: 1,
                      ));
                }
              },
              textName: "start".tr,
              width: double.infinity,
            ),
          )
        ],
      ),
    );
  }
}
