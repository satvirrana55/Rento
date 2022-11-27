import 'package:get/get.dart';

import '../../view/bottom_navigation/home/confirm_screen/confirm_screen_view.dart';

class SelectDateController extends GetxController {
  void confirm() {
    Get.to(const ConfirmScreenView());
  }
}
