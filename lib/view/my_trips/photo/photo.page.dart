import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled55/view/my_trips/photo/photo.controller.dart';

class PhotoPage extends GetView<PhotoController> {
  final Function onComplete;
  const PhotoPage({super.key, required this.onComplete});

  @override
  Widget build(BuildContext context) {
    Get.put(PhotoController(onComplete: onComplete));
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff121418),
        body: SizedBox.expand(
          child: Stack(
            children: [
              Obx(() => controller.cameraController.value == null
                  ? Container()
                  : CameraPreview(
                      controller.cameraController.value!,
                    )),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  width: Get.width,
                  color: const Color(0xFF121418),
                  height: Get.height * 0.1,
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Obx(
                        () => IconButton(
                          onPressed: controller.onLightingTap,
                          icon: Icon(
                            Icons.bolt,
                            color: controller.isLightningOn.value ? Colors.yellow : Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  color: const Color(0xFF121418),
                  height: (Get.height * .25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      20.heightBox,
                      Text(
                        'PHOTO',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(color: const Color(0xFFFFD60A), fontSize: 13, fontWeight: FontWeight.w400),
                      ),
                      20.heightBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: Get.back,
                            child: Text(
                              'Cancel',
                              style: GoogleFonts.inter(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400),
                            ),
                          ),
                          GestureDetector(
                            onTap: controller.takePhoto,
                            child: Container(
                              width: 70,
                              height: 70,
                              decoration: const ShapeDecoration(
                                shape: CircleBorder(side: BorderSide(color: Colors.white, width: 5)),
                              ),
                              padding: const EdgeInsets.all(3),
                              child: Container(
                                decoration: const ShapeDecoration(
                                  color: Colors.white,
                                  shape: CircleBorder(),
                                ),
                              ),
                            ),
                          ),
                          Obx(() => controller.frontCam.value != null
                              ? IconButton(
                                  onPressed: controller.changeCamera,
                                  icon: const Icon(Icons.cameraswitch),
                                  color: Colors.white,
                                )
                              : const SizedBox(width: 48)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
