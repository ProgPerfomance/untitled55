import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled55/view/my_trips/trip.controller.dart';

class CheckinConfirmDialog extends StatelessWidget {
  const CheckinConfirmDialog({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<MyTripController>();
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: ShapeDecoration(
            color: const Color(0xFF202329),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
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
              FloatingActionButton(
                onPressed: () {},
                elevation: 0,
                backgroundColor: const Color(0x14FCFCFC),
                child: const Icon(Icons.call_outlined),
              ),
            ],
          ),
        ),
        const SizedBox(height: 4),
        Container(
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
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Heading',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.dmSans(color: const Color(0xFFD0D0D0), fontSize: 20, fontWeight: FontWeight.w500),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 4, 0, 0),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.dmSans(color: const Color(0x75FCFCFC), fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ),
                16.heightBox,
                Container(
                  height: 48,
                  padding: const EdgeInsets.all(12),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF1C1F24),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/cases.png"),
                      const SizedBox(width: 8),
                      Text(
                        'Cases:',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.dmSans(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              '24 ',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.dmSans(color: const Color(0xFFD0D0D0), fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(width: 4),
                            Text(
                              'pieces',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.dmSans(color: const Color(0x75FCFCFC), fontSize: 14, fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 48,
                  padding: const EdgeInsets.all(12),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF1C1F24),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/pallet 1.png"),
                      const SizedBox(width: 8),
                      Text(
                        'Pallets:',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.dmSans(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              '24 ',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.dmSans(color: const Color(0xFFD0D0D0), fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(width: 4),
                            Text(
                              'pieces',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.dmSans(color: const Color(0x75FCFCFC), fontSize: 14, fontWeight: FontWeight.w400),
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
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                      child: SizedBox(
                        width: Get.width / 2 - 30,
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
                            label:
                                Text("Cases", style: GoogleFonts.dmSans(color: const Color(0x75FCFCFC), fontSize: 12, fontWeight: FontWeight.w500)),
                            hintStyle: GoogleFonts.dmSans(color: const Color(0x75FCFCFC), fontSize: 14, fontWeight: FontWeight.w400),
                            hintText: "Select",
                            suffixIcon: const Icon(Icons.keyboard_arrow_down, color: Color(0xFFD0D0D0)),
                          ),
                          readOnly: true,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                      child: SizedBox(
                        width: Get.width / 2 - 30,
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
                            label:
                                Text("Pallets", style: GoogleFonts.dmSans(color: const Color(0x75FCFCFC), fontSize: 12, fontWeight: FontWeight.w500)),
                            hintStyle: GoogleFonts.dmSans(color: const Color(0x75FCFCFC), fontSize: 14, fontWeight: FontWeight.w400),
                            hintText: "Select",
                            suffixIcon: const Icon(Icons.keyboard_arrow_down, color: Color(0xFFD0D0D0)),
                          ),
                          readOnly: true,
                        ),
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: controller.sendInfoToDispatche,
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
                      'Send information to dispatche',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.dmSans(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
