import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:get/get.dart';
import 'package:untitled55/view/my_trips/trip.model.dart';

class NavigatorController extends GetxController {
  late TripModel trip;
  final Function onGo;

  MapController mapController = MapController(
    initPosition: GeoPoint(latitude: 47.4358055, longitude: 8.4737324),
  );

  NavigatorController({required this.onGo});

  @override
  void onInit() {
    super.onInit();
    trip = Get.arguments as TripModel;
  }

  @override
  void onClose() {
    mapController.dispose();
    super.onClose();
  }

  onGoClick() {
    onGo();
  }
}
