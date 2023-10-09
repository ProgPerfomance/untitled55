import 'package:get/get.dart';

import '../../moneycode/MoneyHistoryFilterScreen.dart';
import 'historydetail.view.dart';

class HistoryContoller extends GetxController {
  void onFilterTap() {
    Get.bottomSheet(const MoneyHistoryFitlerBottomSheet());
  }

  void showHistoryDetail() {
    Get.to(() => const HistoryDetailView());
  }
}
