import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class FinishTripController extends GetxController {
  void onEndTripTap() {
    Get.bottomSheet(
      Container(
        padding: const EdgeInsets.symmetric(vertical: 24),
        decoration: const ShapeDecoration(
          color: Color(0xFF202329),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
            ),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 82,
                height: 82,
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: const Color(0x14FCFCFC),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24.60),
                  ),
                ),
                child: Image.asset("assets/images/endtrip_icon.png", width: 90, height: 90),
              ),
              17.heightBox,
              Text(
                'End trips',
                textAlign: TextAlign.center,
                style: GoogleFonts.dmSans(color: const Color(0xFFD0D0D0), fontSize: 20, fontWeight: FontWeight.w500),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(32, 4, 32, 0),
                child: Text(
                  'Завершает текущий тур поездок',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.dmSans(color: const Color(0x75FCFCFC), fontSize: 14, fontWeight: FontWeight.w400),
                ),
              ),
              16.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: continueEndTrip,
                      child: Container(
                        height: 44,
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        margin: const EdgeInsets.all(24),
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment(1.00, -0.02),
                            end: Alignment(-1, 0.02),
                            colors: [Color(0xFF2550EB), Color(0xFF2897FF)],
                          ),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                        ),
                        child: Text(
                          'Continue',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.dmSans(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: cancelEndTrip,
                      child: Container(
                        height: 44,
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        margin: const EdgeInsets.all(24),
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: const Color(0x14FCFCFC),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                        ),
                        child: Text(
                          'Cancel',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.dmSans(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onRequestTimeOffTap() {}

  void continueEndTrip() {
    Get.back();
  }

  void cancelEndTrip() {
    Get.back();
  }

  void onRequestLoadTap() {
    Get.bottomSheet(
      Container(
        padding: const EdgeInsets.symmetric(vertical: 24),
        decoration: const ShapeDecoration(
          color: Color(0xFF202329),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
            ),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 82,
                height: 82,
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: const Color(0x14FCFCFC),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24.60),
                  ),
                ),
                child: Image.asset("assets/images/endtrip_icon.png", width: 90, height: 90),
              ),
              17.heightBox,
              Text(
                'Request load',
                textAlign: TextAlign.center,
                style: GoogleFonts.dmSans(color: const Color(0xFFD0D0D0), fontSize: 20, fontWeight: FontWeight.w500),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(32, 4, 32, 0),
                child: Text(
                  'Continue work without interruption',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.dmSans(color: const Color(0x75FCFCFC), fontSize: 14, fontWeight: FontWeight.w400),
                ),
              ),
              16.heightBox,
              SizedBox(
                width: Get.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    GestureDetector(
                      onTap: onResetAfterTap,
                      child: Container(
                        height: 44,
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        margin: const EdgeInsets.all(24),
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment(1.00, -0.02),
                            end: Alignment(-1, 0.02),
                            colors: [Color(0xFF2550EB), Color(0xFF2897FF)],
                          ),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                        ),
                        child: Text(
                          'After 34 hour reset',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.dmSans(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: requestReadyNowTap,
                      child: Container(
                        height: 44,
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        margin: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: const Color(0x14FCFCFC),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                        ),
                        child: Text(
                          'Ready now',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.dmSans(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
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
    );
  }

  void requestReadyNowTap() {
    Get.back();
  }

  void onResetAfterTap() {
    Get.back();
  }
}
