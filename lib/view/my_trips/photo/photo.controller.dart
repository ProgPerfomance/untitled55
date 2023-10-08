import 'dart:developer';

import 'package:camera/camera.dart';
import 'package:get/get.dart';

class PhotoController extends GetxController {
  RxBool isLightningOn = false.obs;
  Rx<CameraController?> cameraController = Rx(null);
  Rx<CameraDescription?> frontCam = Rx(null);
  CameraDescription? backCam;
  bool isBackCam = true;

  @override
  void onInit() async {
    super.onInit();
    var cameras = await availableCameras();
    for (var c in cameras) {
      if (c.lensDirection == CameraLensDirection.front) frontCam.value = c;
      if (c.lensDirection == CameraLensDirection.back) backCam = c;
      log("${c.name} ${c.lensDirection}");
    }
    if (backCam != null) {
      _initializeCameraController(backCam!);
    }
  }

  @override
  void onClose() {
    cameraController.value?.dispose();
    super.onClose();
  }

  Future<void> _initializeCameraController(CameraDescription cameraDescription) async {
    cameraController.value = CameraController(
      cameraDescription,
      ResolutionPreset.max,
      enableAudio: false,
      imageFormatGroup: ImageFormatGroup.jpeg,
    );

    cameraController.value?.addListener(() {
      if (cameraController.value!.value.hasError) {
        Get.snackbar("Camera error", 'Camera error ${cameraController.value!.value.errorDescription}');
      }
    });

    try {
      await cameraController.value?.initialize();
      cameraController.refresh();
    } on CameraException catch (e) {
      switch (e.code) {
        case 'CameraAccessDenied':
          Get.snackbar("Camera error", 'You have denied camera access.');
          break;
        case 'CameraAccessDeniedWithoutPrompt':
          // iOS only
          Get.snackbar("Camera error", 'Please go to Settings app to enable camera access.');
          break;
        case 'CameraAccessRestricted':
          // iOS only
          Get.snackbar("Camera error", 'Camera access is restricted.');
          break;
        case 'AudioAccessDenied':
          Get.snackbar("Camera error", 'You have denied audio access.');
          break;
        case 'AudioAccessDeniedWithoutPrompt':
          // iOS only
          Get.snackbar("Camera error", 'Please go to Settings app to enable audio access.');
          break;
        case 'AudioAccessRestricted':
          // iOS only
          Get.snackbar("Camera error", 'Audio access is restricted.');
          break;
        default:
          Get.snackbar("Camera error", e.toString());
          break;
      }
    }
  }

  onLightingTap() {
    isLightningOn.toggle();
    cameraController.value?.setFlashMode(isLightningOn.value ? FlashMode.torch : FlashMode.off);
  }

  void takePhoto() async {
    var photo = await cameraController.value?.takePicture();
    if (photo != null) {
      log(photo.path);
      Get.back();
    }
  }

  void changeCamera() {
    if (backCam == null || frontCam.value == null) return;
    isBackCam = !isBackCam;
    if (isBackCam) {
      _initializeCameraController(backCam!);
    } else {
      _initializeCameraController(frontCam.value!);
    }
  }
}
