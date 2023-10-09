import 'package:get/get.dart';

class DispacherFeedbackController extends GetxController {
  RxInt starCount = 5.obs;

  onConfirmTap() {}

  onSendReview() {}

  setStar(int index) {
    starCount.value = index + 1;
  }
}
