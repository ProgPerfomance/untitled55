import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled55/components/app_bar_widget.dart';
import 'package:untitled55/view/my_trips/endtrip/finishtrip.controller.dart';

class FinishTripPage extends GetView<FinishTripController> {
  const FinishTripPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(FinishTripController());
    return Scaffold(
      backgroundColor: const Color(0xff121418),
      appBar: const AppBarWidget(showActions: false),
      body: Padding(
        padding: const EdgeInsets.only(top: 3),
        child: SizedBox.expand(
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
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Image.asset("assets/images/FinishOk.png", width: 114, height: 114),
                  ),
                  Text(
                    'Finish',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.dmSans(color: const Color(0xFFD0D0D0), fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 32, right: 32),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.dmSans(color: const Color(0xFFfcfcfc).withOpacity(.46), fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Container(height: 1, color: const Color(0xFFFCFCFC).withOpacity(.08)),
                  const SizedBox(height: 16),
                  GestureDetector(
                    onTap: controller.onEndTripTap,
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFCFCFC).withOpacity(0.08),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 18,
                            backgroundColor: const Color(0xFFFCFCFC).withOpacity(0.14),
                            child: Image.asset("assets/images/endtrip_icon.png", width: 20, height: 20),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'End trips',
                                  style: GoogleFonts.dmSans(color: const Color(0xFFD0D0D0), fontSize: 16, fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  'Ends current tour of trips',
                                  style: GoogleFonts.dmSans(color: const Color(0x75FCFCFC), fontSize: 12, fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: const Color(0xFFFCFCFC).withOpacity(.75),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  GestureDetector(
                    onTap: controller.onRequestLoadTap,
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFCFCFC).withOpacity(0.08),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 18,
                            backgroundColor: const Color(0xFFFCFCFC).withOpacity(0.14),
                            child: Image.asset("assets/images/requestload_icon.png", width: 20, height: 20),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Request load',
                                  style: GoogleFonts.dmSans(color: const Color(0xFFD0D0D0), fontSize: 16, fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  'Continue work without interruption',
                                  style: GoogleFonts.dmSans(color: const Color(0x75FCFCFC), fontSize: 12, fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: const Color(0xFFFCFCFC).withOpacity(.75),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  GestureDetector(
                    onTap: controller.onRequestTimeOffTap,
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFCFCFC).withOpacity(0.08),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 18,
                            backgroundColor: const Color(0xFFFCFCFC).withOpacity(0.14),
                            child: Image.asset("assets/images/requesttimeoff_icon.png", width: 20, height: 20),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Request time off',
                                  style: GoogleFonts.dmSans(color: const Color(0xFFD0D0D0), fontSize: 16, fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  'Request a break',
                                  style: GoogleFonts.dmSans(color: const Color(0x75FCFCFC), fontSize: 12, fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: const Color(0xFFFCFCFC).withOpacity(.75),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
