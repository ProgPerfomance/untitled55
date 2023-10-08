import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled55/view/my_trips/photo/photo.page.dart';
import 'package:untitled55/view/my_trips/trip.detail.page.dart';
import 'package:untitled55/view/my_trips/trip.model.dart';

class MyTripController extends GetxController {
  PageController tripsPage = PageController();
  PageController tripsDetailsPage = PageController();
  RxInt currentTripPage = 0.obs;
  RxInt currentTripDetailsPage = 0.obs;

  List<TripModel> avaliable = List.generate(5, (index) => TripModel(index: index + 1, status: TripStatus.avaliable));
  List<TripModel> active = List.generate(3, (index) => TripModel(index: index + 1, status: TripStatus.active));
  List<TripModel> closed = List.generate(10, (index) => TripModel(index: index + 1, status: TripStatus.closed));

  onTripClick(TripModel trip) {
    switch (trip.status) {
      case TripStatus.avaliable:
        Get.to(() => const PhotoPage());
        break;
      case TripStatus.active:
        Get.to(() => TripDetailsPage(data: trip));
        break;
      case TripStatus.closed:
        // TODO: Handle this case.
        break;
    }
  }

  onChangeTripPage(int index) {
    tripsPage.animateToPage(index, duration: const Duration(milliseconds: 300), curve: Curves.linear);
    currentTripPage.value = index;
  }

  onChangeTripDetailsPage(int index) {
    tripsDetailsPage.animateToPage(index, duration: const Duration(milliseconds: 300), curve: Curves.linear);
    currentTripDetailsPage.value = index;
  }

  openNavigatorFor(TripModel data) {
    Get.toNamed("/navigator", arguments: data);
  }

  void onTripCheckinTap(TripModel data) {
    //Get.toNamed("/tripCheckin", arguments: data);
  }
}
