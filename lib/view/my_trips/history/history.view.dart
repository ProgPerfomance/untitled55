import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled55/view/my_trips/history/history.controller.dart';

class HistoryView extends GetView<HistoryContoller> {
  const HistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HistoryContoller());
    return Container();
  }
}
