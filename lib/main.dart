import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rento/controller/verifyotp/verifyotp_controller.dart';
import 'package:rento/themes/themes.dart';
import 'package:rento/utility_funtions.dart/config.dart';
import 'package:rento/view/bottom_navigation/bottombar_page.dart';
import 'package:rento/view/bottom_navigation/home/home_screen/home_screen_view.dart';
import 'package:rento/view/selectionPage/selection_screen.dart';
import 'package:rento/view/service_provider/dashboard/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'helpers/string.dart';

SharedPreferences? preferences;
VerifyController verifyController = Get.put(VerifyController());

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));

  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  Get.put(prefs, permanent: true);
  preferences = prefs;
  verifyController.getLoginIndex();
  verifyController.getLoginNumber();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return ScreenUtilInit(
        designSize: Config.designSize,
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            translations: LocaleString(),
            locale: const Locale('en', 'US'),
            debugShowCheckedModeBanner: false,
            title: 'Rento',
            theme: MyThemes.lightTheme,
            darkTheme: MyThemes.darkTheme,
            home: verifyController.loginNumberList.isEmpty &&
                    verifyController.loginNumberIndex.isEmpty
                ? const SelectionScreen()
                : verifyController.loginNumberIndex[0] == '0'
                    ? const ServiceProviderDashoard()
                    : verifyController.loginNumberIndex[0] == '1'
                        ? const BottomBarPage()
                        : const SelectionScreen(),
          );
        });
  }
}
