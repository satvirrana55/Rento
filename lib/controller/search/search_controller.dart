import 'package:get/get.dart';
import 'package:rento/view/service_provider/dashboard/filter/filter.dart';
import 'package:rento/view/service_provider/dashboard/sort/sort.dart';

import '../../view/bottom_navigation/home/search_screen2.dart';

class SearchController extends GetxController {
  void gotonextScreen() {
    Get.to(const SearchScreen2());
  }

  void sort() {
    Get.to(const Sort());
  }

  void filter() {
    Get.to(const Filter());
  }
}
