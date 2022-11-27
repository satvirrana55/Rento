import 'package:get/get.dart';
import 'package:rento/view/bottom_navigation/home/new_listing_detail_screen/new_listing_detail_screen_view.dart';
import 'package:rento/view/bottom_navigation/home/vendors/vendors_screen_view.dart';

class HomeController extends GetxController {
  void vendors() {
    Get.to(const VendorScreenView());
  }

  void newListing() {
    Get.to(const NewListingDetailScreen());
  }

  void category() {
    //
  }
}
