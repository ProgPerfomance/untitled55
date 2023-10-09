import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled55/components/app_bar_widget.dart';
import 'package:untitled55/view/global_widgets/buttons.widget.dart';
import 'package:untitled55/view/my_trips/tripinfo/addphoto/addphoto.controller.dart';

class AddPhotoPage extends GetView<AddPhotoController> {
  const AddPhotoPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(AddPhotoController());
    return Scaffold(
      backgroundColor: const Color(0xff121418),
      appBar: const AppBarWidget(showActions: false),
      body: SizedBox.expand(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.fromLTRB(0, 3, 0, 3),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: const Color(0xFF202329),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(12, 10, 12, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () => controller.onChangePage(0),
                            child: Obx(() => Text(
                                  'Seal number',
                                  style: GoogleFonts.dmSans(
                                      fontSize: 14,
                                      color: controller.currentPage.value == 0 ? const Color(0xffD0D0D0) : const Color(0xffFCFCFC).withOpacity(0.46)),
                                )),
                          ),
                          15.widthBox,
                          GestureDetector(
                            onTap: () => controller.onChangePage(1),
                            child: Obx(() => Text(
                                  'Photo product',
                                  style: GoogleFonts.dmSans(
                                      fontSize: 14,
                                      color: controller.currentPage.value == 1 ? const Color(0xffD0D0D0) : const Color(0xffFCFCFC).withOpacity(0.46)),
                                )),
                          ),
                          15.widthBox,
                          GestureDetector(
                            onTap: () => controller.onChangePage(2),
                            child: Obx(() => Text(
                                  'Photo BOL',
                                  style: GoogleFonts.dmSans(
                                      fontSize: 14,
                                      color: controller.currentPage.value == 2 ? const Color(0xffD0D0D0) : const Color(0xffFCFCFC).withOpacity(0.46)),
                                )),
                          ),
                        ],
                      ),
                    ),
                    Container(height: 1, color: const Color(0xFFFCFCFC).withOpacity(.08)),
                    Expanded(
                      child: PageView(
                        physics: const NeverScrollableScrollPhysics(),
                        controller: controller.pages,
                        children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
                            child: GestureDetector(
                              child: Container(
                                decoration: ShapeDecoration(
                                  color: const Color(0x14FCFCFC),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12), side: const BorderSide(width: 1, color: Color(0x14FCFCFC))),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(Icons.upload, color: Color(0x75FCFCFC)),
                                    const SizedBox(width: 4),
                                    Text(
                                      'add photo',
                                      style: GoogleFonts.dmSans(color: const Color(0x75FCFCFC), fontSize: 14, fontWeight: FontWeight.w400),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Container(
                                    height: 85,
                                    decoration: ShapeDecoration(
                                      color: const Color(0x143156D7),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(12), side: const BorderSide(width: 1, color: Color(0x14FCFCFC))),
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.stretch,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Row(
                                                children: [
                                                  const SizedBox(
                                                    width: 16,
                                                    height: 16,
                                                    child: CircularProgressIndicator(strokeWidth: 2),
                                                  ),
                                                  const SizedBox(width: 8),
                                                  Text(
                                                    'Loading',
                                                    textAlign: TextAlign.center,
                                                    style:
                                                        GoogleFonts.dmSans(color: const Color(0x75FCFCFC), fontSize: 14, fontWeight: FontWeight.w400),
                                                  ),
                                                ],
                                              ),
                                              Text.rich(
                                                TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: '3',
                                                      style: GoogleFonts.dmSans(
                                                          color: const Color(0xFFD0D0D0), fontSize: 14, fontWeight: FontWeight.w500),
                                                    ),
                                                    TextSpan(
                                                      text: ' / 4',
                                                      style: GoogleFonts.dmSans(
                                                          color: const Color(0x75FCFCFC), fontSize: 12, fontWeight: FontWeight.w500),
                                                    ),
                                                  ],
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ],
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.fromLTRB(16, 12, 16, 0),
                                          child: LinearProgressIndicator(
                                            borderRadius: BorderRadius.all(Radius.circular(30)),
                                            minHeight: 12,
                                            backgroundColor: Color(0x14fcfcfc),
                                            color: Color(0xFF2551EB),
                                            value: 0.7,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 12),
                                  Wrap(
                                    spacing: 4,
                                    runSpacing: 4,
                                    children: List.generate(
                                      14,
                                      (index) => Container(
                                        width: 89,
                                        height: 88,
                                        decoration: ShapeDecoration(
                                          image: const DecorationImage(image: NetworkImage("https://via.placeholder.com/89x88"), fit: BoxFit.fill),
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                                          shadows: const [BoxShadow(color: Color(0x3F000000), blurRadius: 4, offset: Offset(0, 4), spreadRadius: 0)],
                                        ),
                                        child: Align(
                                          alignment: Alignment.topRight,
                                          child: Container(
                                            width: 20,
                                            height: 20,
                                            margin: const EdgeInsets.only(right: 8, top: 8),
                                            decoration: const ShapeDecoration(
                                              color: Color(0xFF2551EB),
                                              shape: CircleBorder(),
                                            ),
                                            child: const Icon(Icons.check, color: Colors.white, size: 14),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  GestureDetector(
                                    child: Container(
                                      height: 85,
                                      decoration: ShapeDecoration(
                                        color: const Color(0x14FCFCFC),
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(12), side: const BorderSide(width: 1, color: Color(0x14FCFCFC))),
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          const Icon(Icons.upload, color: Color(0x75FCFCFC)),
                                          const SizedBox(width: 4),
                                          Text(
                                            'add photo',
                                            style: GoogleFonts.dmSans(color: const Color(0x75FCFCFC), fontSize: 14, fontWeight: FontWeight.w400),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 12),
                                  Wrap(
                                    spacing: 4,
                                    runSpacing: 4,
                                    children: List.generate(
                                      61,
                                      (index) => Container(
                                        width: 89,
                                        height: 88,
                                        decoration: ShapeDecoration(
                                          image: const DecorationImage(image: NetworkImage("https://via.placeholder.com/89x88"), fit: BoxFit.fill),
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                                          shadows: const [BoxShadow(color: Color(0x3F000000), blurRadius: 4, offset: Offset(0, 4), spreadRadius: 0)],
                                        ),
                                        child: Align(
                                          alignment: Alignment.topRight,
                                          child: Container(
                                            width: 20,
                                            height: 20,
                                            margin: const EdgeInsets.only(right: 8, top: 8),
                                            decoration: const ShapeDecoration(
                                              color: Color(0xFF2551EB),
                                              shape: CircleBorder(),
                                            ),
                                            child: const Icon(Icons.check, color: Colors.white, size: 14),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFFFCFCFC).withOpacity(0.08),
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(17), topRight: Radius.circular(17)),
              ),
              child: BlueButton(
                onTap: controller.onConfirmTap,
                child: Text(
                  'Confirm',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.dmSans(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
