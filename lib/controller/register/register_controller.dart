import 'package:get/get.dart';

import '../../view/bottom_navigation/bottombar_page.dart';

class RegisterController extends GetxController {
  void registerUser() {
    Get.to(() => const BottomBarPage());
  }
}
