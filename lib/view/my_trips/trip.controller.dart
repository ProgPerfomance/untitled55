import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled55/view/my_trips/endtrip/dispacherfeedback.page.dart';
import 'package:untitled55/view/moneycode/SelectCategoryBottomSheet/SelectCategoryBottomSheet.dart';
import 'package:untitled55/view/moneycode/WriteMoneyScreen.dart';
import 'package:untitled55/view/my_trips/history/history.view.dart';
import 'package:untitled55/view/my_trips/navigator/navigator.page.dart';
import 'package:untitled55/view/my_trips/photo/photo.page.dart';
import 'package:untitled55/view/my_trips/trip.detail.page.dart';
import 'package:untitled55/view/my_trips/trip.model.dart';
import 'package:untitled55/view/my_trips/tripinfo/tripinfo.page.dart';
import 'package:untitled55/view/my_trips/widgets/checkin.dialog.dart';
import 'package:untitled55/view/my_trips/widgets/checkincontinue.dialog.dart';
import 'package:untitled55/view/my_trips/widgets/chekinconfirm.dialog.dart';

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
        Get.to(() => PhotoPage(onComplete: () {}));
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
    Get.to(
        () => NavigatorPage(
              onGo: () {
                Get.to(() => TripDetailsPage(data: TripModel(index: 555, status: TripStatus.closed)));
              },
            ),
        arguments: data);
  }

  void onTripCheckinTap(TripModel data) {
    Get.bottomSheet(const CheckinDialog());
  }

  checkinConinue() async {
    Get.back();
    Get.bottomSheet(const CheckinContinueDialog());
  }

  checkinConfirm() {
    Get.back();
    Get.bottomSheet(
      const CheckinConfirmDialog(),
      isScrollControlled: true,
    );
  }

  sendInfoToDispatche() {
    Get.back();
    Get.to(() => const TripInfoPage());
  }

  onEndTripTap(TripModel trip) {
    Get.to(
      () => PhotoPage(
        onComplete: () => Get.to(
          () => const DispacherFeedbackPage(),
        ),
      ),
    );
  }

  onRequestMoneyTap() {
    Get.bottomSheet(const SelectCategoryBottomSheet());
  }

  onSelectCategoryTap() {
    Get.to(() => const WriteMoneyScreen());
  }

  void onHistoryTap() {
    Get.to(() => const HistoryView());
  }
}
