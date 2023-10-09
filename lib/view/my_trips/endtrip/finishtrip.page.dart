import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled55/view/my_trips/endtrip/finishtrip.controller.dart';

class FinishTripPage extends GetView<FinishTripController> {
  const FinishTripPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(FinishTripController());
    return Container();
  }
}
