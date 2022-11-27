import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rento/themes/themes.dart';
import 'package:rento/utility_funtions.dart/ts.dart';
import 'package:rento/view/bottom_navigation/profile/profile_Screen/profile_screen_view.dart';
import 'package:rento/view/bottom_navigation/wishlist/wishlist_screen.dart';
import 'package:rento/view/selectionPage/selection_screen.dart';

import '../../components/images.dart';
import '../../helpers/common_colors.dart';
import 'home/home_screen/home_screen_view.dart';
import 'order_screen/orders_screen_view.dart';

class BottomBarPage extends StatefulWidget {
  const BottomBarPage({Key? key}) : super(key: key);

  @override
  _BottomBarPageState createState() => _BottomBarPageState();
}

class _BottomBarPageState extends State<BottomBarPage>
    with TickerProviderStateMixin {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreenView(),
    const OrdersScreenView(),
    const WishlistScreen(),
    const ProfileScreenView(),
  ];
  late TabController tabController;
  Future<bool?> _onBackPressed() async {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Are you sure?'),
        content: const Text('Do you want to exit an App'),
        actions: <Widget>[
          GestureDetector(
            onTap: () => Navigator.of(context).pop(false),
            child: const Text("NO"),
          ),
          const SizedBox(height: 16),
          GestureDetector(
            onTap: () => Get.to(() => const SelectionScreen()),
            child: const Text("YES"),
          ),
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    /*  if (index == 0) {
      _showPopupMenu();
    } else { */
    setState(() {
      _selectedIndex = index;
    });
    //}
  }

  @override
  void initState() {
    super.initState();
    tabController = TabController(initialIndex: 0, length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final show = await _onBackPressed();
        return show ?? false;
      },
      child: Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: SafeArea(
          child: Material(
            color: Colors.white,
            elevation: 10,
            child: BottomAppBar(
              color: Get.isDarkMode
                  ? CommonColors.darkBackgroundColor
                  : CommonColors.whiteColor,
              notchMargin: 8,
              shape: const CircularNotchedRectangle(),
              child: TabBar(
                tabs: [
                  SizedBox(
                    width: "HOME".tr == "घर"
                        ? 20.sp
                        : "HOME".tr == "HEIMAT"
                            ? 60.sp
                            : 50.sp,
                    child: Tab(
                        icon: _selectedIndex == 0
                            ? const ImageIcon(
                                AssetImage(Images.home),
                                color: CommonColors.mainColor,
                                size: 20,
                              )
                            : ImageIcon(
                                const AssetImage(Images.home),
                                size: 20,
                                color: context.isDarkMode
                                    ? CommonColors.lightGrey18
                                    : CommonColors.disableIconColor,
                              ),
                        text: "HOME".tr),
                  ),
                  SizedBox(
                    width: "HOME".tr == "घर"
                        ? 20.sp
                        : "HOME".tr == "HEIMAT"
                            ? 70.sp
                            : 50.sp,
                    child: Tab(
                      icon: _selectedIndex == 1
                          ? const ImageIcon(
                              AssetImage(Images.order),
                              color: CommonColors.mainColor,
                              size: 20,
                            )
                          : ImageIcon(
                              const AssetImage(Images.order),
                              color: context.isDarkMode
                                  ? CommonColors.lightGrey18
                                  : CommonColors.disableIconColor,
                              size: 20,
                            ),
                      text: "ORDERS".tr,
                    ),
                  ),
                  SizedBox(
                    width: "HOME".tr == "घर"
                        ? 60.sp
                        : "HOME".tr == "HEIMAT"
                            ? 100.sp
                            : 60.sp,
                    child: Tab(
                      icon: _selectedIndex == 2
                          ? const ImageIcon(
                              AssetImage(Images.heart),
                              color: CommonColors.mainColor,
                              size: 20,
                            )
                          : ImageIcon(
                              const AssetImage(Images.heart),
                              color: context.isDarkMode
                                  ? CommonColors.lightGrey18
                                  : CommonColors.disableIconColor,
                              size: 20,
                            ),
                      text: "WISHLIST".tr,
                    ),
                  ),
                  SizedBox(
                    width: "HOME".tr == "घर"
                        ? 70.sp
                        : "HOME".tr == "HEIMAT"
                            ? 120.sp
                            : 70.sp,
                    child: Tab(
                      icon: _selectedIndex == 3
                          ? const ImageIcon(
                              AssetImage(
                                Images.profile,
                              ),
                              color: CommonColors.mainColor,
                              size: 20,
                            )
                          : ImageIcon(
                              const AssetImage(
                                Images.profile,
                              ),
                              color: context.isDarkMode
                                  ? CommonColors.lightGrey18
                                  : CommonColors.disableIconColor,
                              size: 20,
                            ),
                      text: "PROFILE".tr,
                    ),
                  )
                ],
                onTap: _onItemTapped,
                labelPadding: const EdgeInsets.symmetric(horizontal: 0.0),
                labelStyle: Ts.medium12(CommonColors.disableIconColor),
                labelColor: CommonColors.primaryButtonColor,
                unselectedLabelColor: context.isDarkMode
                    ? CommonColors.lightGrey18
                    : CommonColors.disableIconColor,
                isScrollable: false,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: CommonColors.primaryButtonColor,
                controller: tabController,
                indicator: const UnderlineTabIndicator(
                  insets: EdgeInsets.fromLTRB(30, 0.0, 30.0, 72.0),
                  borderSide: BorderSide(
                      color: CommonColors.primaryButtonColor, width: 4),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
