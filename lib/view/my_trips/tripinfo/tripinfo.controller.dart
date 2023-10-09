import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TripInfoController extends GetxController {
  RxBool cycleContSelector = false.obs;
  RxInt temperature = 25.obs;

  TextEditingController temperatureText = TextEditingController();

  void onConfirmTap() {
    Get.back();
  }

  @override
  void onClose() {
    temperatureText.dispose();
    super.onClose();
  }

  void onContSelect(bool? value) {
    if (value == null) return;
    if (value) cycleContSelector.value = false;
  }

  void onCycleSelect(bool? value) {
    if (value == null) return;
    if (value) cycleContSelector.value = true;
  }

  void onTemperatureChange(value) {
    temperature.value = value.round();
    temperatureText.text = temperature.value.toString();
  }

  void onAddPhotoTap() {
  }
}
