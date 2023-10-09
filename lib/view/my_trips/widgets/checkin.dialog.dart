import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled55/view/my_trips/trip.controller.dart';

class CheckinDialog extends StatelessWidget {
  const CheckinDialog({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<MyTripController>();
    return Container(
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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset("assets/images/CheckInClock.png", width: 90, height: 90),
            17.heightBox,
            Text(
              'Set date',
              textAlign: TextAlign.center,
              style: GoogleFonts.dmSans(color: const Color(0xFFD0D0D0), fontSize: 20, fontWeight: FontWeight.w500),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(32, 4, 32, 0),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ',
                textAlign: TextAlign.center,
                style: GoogleFonts.dmSans(color: const Color(0x75FCFCFC), fontSize: 14, fontWeight: FontWeight.w400),
              ),
            ),
            16.heightBox,
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 16, 24, 0),
              child: TextField(
                style: GoogleFonts.dmSans(color: const Color(0xFFFCFCFC), fontSize: 12, fontWeight: FontWeight.w500),
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
                  label: Text("Check in", style: GoogleFonts.dmSans(color: const Color(0x75FCFCFC), fontSize: 12, fontWeight: FontWeight.w500)),
                  hintStyle: GoogleFonts.dmSans(color: const Color(0x14FCFCFC), fontSize: 14, fontWeight: FontWeight.w400),
                  hintText: "Set date",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 16, 24, 0),
              child: TextField(
                style: GoogleFonts.dmSans(color: const Color(0xFFFCFCFC), fontSize: 12, fontWeight: FontWeight.w500),
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
                  label: Text("Check in", style: GoogleFonts.dmSans(color: const Color(0x75FCFCFC), fontSize: 12, fontWeight: FontWeight.w500)),
                  hintStyle: GoogleFonts.dmSans(color: const Color(0x14FCFCFC), fontSize: 14, fontWeight: FontWeight.w400),
                  hintText: "Set date",
                ),
              ),
            ),
            GestureDetector(
              onTap: controller.checkinConinue,
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
          ],
        ),
      ),
    );
  }
}
