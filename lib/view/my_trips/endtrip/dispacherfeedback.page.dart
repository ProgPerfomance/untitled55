import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled55/components/app_bar_widget.dart';
import 'package:untitled55/view/global_widgets/buttons.widget.dart';
import 'package:untitled55/view/my_trips/endtrip/dispacherdeedback.controller.dart';

class DispacherFeedbackPage extends GetView<DispacherFeedbackController> {
  const DispacherFeedbackPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(DispacherFeedbackController());
    return Scaffold(
      backgroundColor: const Color(0xff121418),
      appBar: const AppBarWidget(showActions: false),
      body: SizedBox.expand(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFCFCFC).withOpacity(0.08),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Dispacher feedback',
                        textAlign: TextAlign.start,
                        style: GoogleFonts.dmSans(color: const Color(0xFFD0D0D0), fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset("assets/images/feedback.png", width: 114, height: 114),
                      ),
                      Text(
                        'Leave Feedback',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.dmSans(color: const Color(0xFFD0D0D0), fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 32, right: 32),
                        child: Text(
                          'Please evaluate the performance of your dispatcher.',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.dmSans(color: const Color(0xFFD0D0D0), fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(12),
                        margin: const EdgeInsets.fromLTRB(0, 16, 0, 16),
                        decoration: BoxDecoration(
                          color: const Color(0xFFFCFCFC).withOpacity(.14),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          children: [
                            const CircleAvatar(
                              radius: 22,
                              backgroundImage: AssetImage("assets/images/chat_avatar.png"),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Dispacher',
                                    style: GoogleFonts.dmSans(color: const Color(0x75FCFCFC), fontSize: 12, fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    'Tommy Shelby',
                                    style: GoogleFonts.dmSans(
                                      color: const Color(0xFFD0D0D0),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Revie',
                            style: GoogleFonts.dmSans(color: const Color(0x75FCFCFC), fontSize: 12, fontWeight: FontWeight.w500),
                          ),
                          Obx(
                            () => Text(
                              '${controller.starCount}/10',
                              style: GoogleFonts.dmSans(color: const Color(0x75FCFCFC), fontSize: 12, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(
                            10,
                            (index) => GestureDetector(
                              onTap: () => controller.setStar(index),
                              child: Obx(
                                () => Icon(
                                  Icons.star,
                                  size: 28,
                                  color: index < controller.starCount.value ? const Color(0xF2563EBF) : const Color(0xFFFCFCFC).withOpacity(.14),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: TextField(
                          style: GoogleFonts.dmSans(color: const Color(0xFFFCFCFC), fontSize: 12, fontWeight: FontWeight.w500),
                          minLines: 2,
                          maxLines: 2,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(width: 1, color: Color(0x75FCFCFC)),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(width: 1, color: Color(0x75FCFCFC)),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(width: 1, color: Color(0x75FCFCFC)),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            label: Text("Note", style: GoogleFonts.dmSans(color: const Color(0x75FCFCFC), fontSize: 12, fontWeight: FontWeight.w500)),
                            hintStyle: GoogleFonts.dmSans(color: const Color(0xFFD0D0D0), fontSize: 14, fontWeight: FontWeight.w400),
                            hintText: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFFFCFCFC).withOpacity(0.08),
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(17), topRight: Radius.circular(17)),
              ),
              child: BlueButton(
                onTap: controller.onSendReview,
                child: Text(
                  'Send review',
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
