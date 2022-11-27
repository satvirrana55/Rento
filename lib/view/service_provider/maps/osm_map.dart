import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';

class OsmMap extends StatefulWidget {
  const OsmMap({Key? key}) : super(key: key);

  @override
  State<OsmMap> createState() => _OsmMapState();
}

class _OsmMapState extends State<OsmMap> {
  late MapController mapController;

  Future<void> osmMapCircle() async {
    await mapController.drawCircle(CircleOSM(
      key: "circle0",
      centerPoint: GeoPoint(
        latitude: 47.4358055,
        longitude: 8.4737324,
      ),
      radius: 12000.0,
      color: Colors.black,
      strokeWidth: 0.3,
    ));
  }

  @override
  void initState() {
    // TODO: implement initState
    mapController = MapController(
      initMapWithUserPosition: true,
    );
    mapController.drawCircle(CircleOSM(
      key: "circle0",
      centerPoint: GeoPoint(
        latitude: 47.4358055,
        longitude: 8.4737324,
      ),
      radius: 12000.0,
      color: Colors.black,
      strokeWidth: 0.3,
    ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return OSMFlutter(
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
    );
  }
}
