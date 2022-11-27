import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/utility_funtions.dart/navigator_helper.dart';
import 'package:rento/utility_funtions.dart/ts.dart';
import 'package:rento/view/service_provider/select_categories/select_category.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class Maps extends StatefulWidget {
  const Maps({Key? key}) : super(key: key);

  @override
  State<Maps> createState() => _MapsState();
}

class _MapsState extends State<Maps> {
  late MapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);
  Set<Marker> markers = {};

  /* void _onMapCreated(GoogleMapController controller) {
    controller.setMapStyle(MapStyle.mapStyle);
    mapController = controller;
    setState(() {
      markers.add(Marker(
        markerId: const MarkerId('10'),
        icon: icon,
        position: const LatLng(45.521563, -122.677433),
      ));
    });
  } */

  late BitmapDescriptor icon;

  Future<void> getIcons(MapController controller) async {
    controller.drawCircle(CircleOSM(
      key: "circle0",
      centerPoint: GeoPoint(
        latitude: 47.4358055,
        longitude: 8.4737324,
      ),
      radius: 1200.0,
      color: Colors.black,
      strokeWidth: 0.2,
    ));
  }

  RangeValues rangeValues = const RangeValues(1, 40);
  double _value = 3.0;

  @override
  void initState() {
    mapController = MapController(
      initMapWithUserPosition: false,
      initPosition: GeoPoint(
        latitude: 47.4358055,
        longitude: 8.4737324,
      ),
    );
    mapController.drawCircle(CircleOSM(
      key: "circle0",
      centerPoint: GeoPoint(
        latitude: 47.4358055,
        longitude: 8.4737324,
      ),
      radius: 120.0,
      color: Colors.white,
      strokeWidth: 0.5,
    ));
    getIcons(mapController);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child: OSMFlutter(
            controller: mapController,
            trackMyPosition: true,
            initZoom: 19,
            minZoomLevel: 2,
            maxZoomLevel: 15,
            stepZoom: 1.0,
            mapIsLoading: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  CircularProgressIndicator(),
                ],
              ),
            ),
            userLocationMarker: UserLocationMaker(
              personMarker: MarkerIcon(
                assetMarker: AssetMarker(
                    image: const AssetImage(
                      "assets/location.png",
                    ),
                    scaleAssetImage: 0.7),
              ),
              directionArrowMarker: const MarkerIcon(
                icon: Icon(
                  Icons.double_arrow,
                  size: 200,
                ),
              ),
            ),
          )),
          Positioned(
            top: 140,
            right: 30,
            child: SizedBox(
              height: 43,
              width: 43,
              child: FloatingActionButton(
                backgroundColor: Colors.white,
                onPressed: () {},
                child: const Icon(
                  Icons.my_location,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Positioned(
              top: 50,
              right: 30,
              left: 20,
              child: Container(
                color: Colors.transparent,
                child: Row(
                  children: [
                    IconButton(
                        color: Get.isDarkMode
                            ? CommonColors.whiteColor
                            : CommonColors.blackColor,
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_back_outlined)),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: CommonColors.whiteColor,
                            border: Border.all(
                                color: CommonColors.primaryButtonColor),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: TextField(
                            cursorColor: const Color(0xFF000000),
                            // controller: _searchController,
                            decoration: InputDecoration(
                                prefixIcon: const Icon(
                                  Icons.search,
                                  color: CommonColors.blackColor,
                                ),
                                hintText: "Boston",
                                hintStyle: Ts.regular18(
                                    const Color.fromRGBO(0, 0, 0, 1)),
                                border: InputBorder.none),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
          Positioned(
              right: 0,
              left: 0,
              bottom: 24,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Get.isDarkMode
                            ? CommonColors.lightDark1
                            : const Color.fromRGBO(255, 255, 255, 1)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 17,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 39, right: 39),
                          child: Center(
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                  '1670 Plymouth St, Mountain View, CA 94043, USA',
                                  textAlign: TextAlign.center,
                                  style: Get.isDarkMode
                                      ? Ts.medium14(CommonColors.whiteColor)
                                      : Ts.medium14(
                                          const Color.fromRGBO(81, 81, 81, 1))),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 22, right: 20),
                          child: Text('selectServiceArea'.tr,
                              style: Get.isDarkMode
                                  ? Ts.semiBold14(
                                      Color.fromRGBO(97, 102, 106, 1))
                                  : Ts.semiBold14(
                                      const Color.fromRGBO(97, 102, 106, 1))),
                        ),
                        SfSlider(
                          inactiveColor: Color.fromRGBO(212, 212, 212, 1),
                          stepSize: 1,
                          min: 0.0,
                          max: 32.0,
                          value: _value,
                          interval: 3,
                          activeColor: CommonColors.primaryButtonColor,
                          showTicks: false,
                          showLabels: false,
                          enableTooltip: false,
                          /* labelFormatterCallback:
                              (dynamic actualValue, String formattedText) {
                            return actualValue == 10000
                                ? 'formattedText'
                                : '         ${formattedText}Km';
                          }, */
                          onChanged: (dynamic value) {
                            setState(() {
                              _value = value;
                            });
                          },
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('1km',
                                  style: Ts.regular10(
                                      const Color.fromRGBO(171, 182, 190, 1))),
                              Text('4km',
                                  style: Ts.regular10(
                                      const Color.fromRGBO(171, 182, 190, 1))),
                              Text('8km',
                                  style: Ts.regular10(
                                      const Color.fromRGBO(171, 182, 190, 1))),
                              Text('12km',
                                  style: Ts.regular10(
                                      const Color.fromRGBO(171, 182, 190, 1))),
                              Text('16km',
                                  style: Ts.regular10(
                                      const Color.fromRGBO(171, 182, 190, 1))),
                              Text('32km',
                                  style: Ts.regular10(
                                      const Color.fromRGBO(171, 182, 190, 1))),
                            ]),
                        const SizedBox(
                          height: 9,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 13, right: 13),
                          child: SizedBox(
                            height: 59.sp,
                            width: double.infinity,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 0,
                                shadowColor: Colors.transparent,
                                side: const BorderSide(
                                  color: CommonColors.primaryButtonColor,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                                primary: CommonColors.primaryButtonColor,
                              ),
                              onPressed: () {
                                Push.to(const SelectCategory(), context);
                              },
                              child: Text('done'.tr,
                                  style: Ts.medium16(CommonColors.whiteColor)),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                      ],
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}

class MapStyle {
  static String mapStyle = '''
[
  {
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#f5f5f5"
      }
    ]
  },
  {
    "featureType": "road",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#ffffff"
      }
    ]
  },
  {
    "featureType": "water",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#c9c9c9"
      }
    ]
  },
  {
    "featureType": "water",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#9e9e9e"
      }
    ]
  }
]
''';
}
