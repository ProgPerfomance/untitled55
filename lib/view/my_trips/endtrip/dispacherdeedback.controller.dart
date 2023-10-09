import 'package:get/get.dart';
import 'package:untitled55/view/my_trips/endtrip/finishtrip.page.dart';

class DispacherFeedbackController extends GetxController {
  RxInt starCount = 5.obs;

  onConfirmTap() {}

  onSendReview() {
    Get.to(() => const FinishTripPage());
  }

  setStar(int index) {
    starCount.value = index + 1;
  }
}
