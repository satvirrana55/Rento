import 'package:get/get.dart';

import '../../view/bottom_navigation/home/select_date_screen/select_date_screen_view.dart';

class NewListingController extends GetxController {
  void selectDate() {
    Get.to(const SelectDateScreen());
  }
}
