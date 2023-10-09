import 'dart:developer';

import 'package:get/get.dart';

import '../../moneycode/MoneyHistoryFilterScreen.dart';
import 'historydetail.view.dart';

class HistoryContoller extends GetxController {
  void onFilterTap() {
    log("onFilterTap");
    Get.bottomSheet(MoneyHistoryFitlerBottomSheet());
  }

  void showHistoryDetail() {
    Get.to(() => const HistoryDetailView());
  }
}
