import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled55/view/my_trips/history/historydetail.controller.dart';

class HistoryDetailView extends GetView<HistoryDetailContoller> {
  const HistoryDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HistoryDetailContoller());
    return Container();
  }
}
