import 'dart:developer';

import 'package:get/get.dart';
import 'package:untitled55/view/my_trips/history/historydetail.view.dart';

class HistoryContoller extends GetxController {
  void onFilterTap() {
    log("onFilterTap");
  }

  void showHistoryDetail() {
    Get.to(() => const HistoryDetailView());
  }
}
