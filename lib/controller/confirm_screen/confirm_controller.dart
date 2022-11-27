import 'package:get/get.dart';
import 'package:rento/view/bottom_navigation/order_detail_screen/order_detail_screen_view.dart';

class ConfirmController extends GetxController {
  bool selectCard = false;
  void confirm() {
    Get.to(const OrderDetailScreenView());
  }
}
