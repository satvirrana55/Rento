import 'package:get/get.dart';

import '../../view/authentication/login/login_view.dart';
import '../../view/bottom_navigation/bottombar_page.dart';

class IntroductionController extends GetxController {
  void landingPage(index) {
    Get.to(() => const BottomBarPage());
    if (index == 1) {
      if (index == 1) {
        Get.to({
          const LoginView(
            index: 1,
          )
        });
      }
    } else {
      Get.to(() => const LoginView());
    }
  }
}
