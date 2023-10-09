import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class AddPhotoController extends GetxController {
  PageController pages = PageController();
  RxInt currentPage = 0.obs;

  void onConfirmTap() {
    Get.back();
  }

  onChangePage(int index) {
    pages.animateToPage(index, duration: const Duration(milliseconds: 300), curve: Curves.linear);
    currentPage.value = index;
  }
}
