import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled55/components/app_bar_widget.dart';
import 'package:untitled55/view/my_trips/history/history.controller.dart';

class HistoryView extends GetView<HistoryContoller> {
  const HistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HistoryContoller());

    return Scaffold(
      backgroundColor: const Color(0xff121418),
      appBar: const AppBarWidget(showActions: false),
      body: Padding(
        padding: const EdgeInsets.only(top: 3),
        child: SizedBox.expand(
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color(0xFFFCFCFC).withOpacity(0.08),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: SizedBox(
                        width: Get.width - 100,
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
                            prefixIcon: const Icon(Icons.search, color: Color(0x75FCFCFC)),
                            isDense: true,
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            hintStyle: GoogleFonts.dmSans(color: const Color(0x75FCFCFC), fontSize: 14, fontWeight: FontWeight.w400),
                            hintText: "Search",
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    GestureDetector(
                      onTap: controller.onFilterTap,
                      child: Container(
                        margin: const EdgeInsets.only(top: 16),
                        width: 44,
                        height: 44,
                        decoration: ShapeDecoration(
                          color: const Color(0x14FCFCFC),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: const Icon(Icons.filter_alt, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Text(
                  'History',
                  style: GoogleFonts.dmSans(color: const Color(0xFFD0D0D0), fontSize: 14, fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: 12),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Text(
                          '20 Jun 2023',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.dmSans(color: const Color(0x66FCFCFC), fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                        ...List.generate(
                          5,
                          (index) => buildLine(index),
                        ),
                        Text(
                          '20 Aug 2022',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.dmSans(color: const Color(0x66FCFCFC), fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                        ...List.generate(
                          15,
                          (index) => buildLine(index),
                        ),
                        Text(
                          '7 Jan 2021',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.dmSans(color: const Color(0x66FCFCFC), fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                        ...List.generate(
                          25,
                          (index) => buildLine(index),
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
    );
  }

  buildLine(int index) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
      margin: const EdgeInsets.only(top: 4, bottom: 4),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), color: const Color(0x14FCFCFC)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 40,
            height: 40,
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: const Color(0x14FCFCFC),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Image.asset("assets/images/user.png"),
          ),
          12.widthBox,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Lumper',
                  style: GoogleFonts.dmSans(color: const Color(0xFFD0D0D0), fontSize: 14, fontWeight: FontWeight.w500),
                ),
                Text(
                  'Andrey Bozhenko, 20 Jun 2021',
                  style: GoogleFonts.dmSans(color: const Color(0x75FCFCFC), fontSize: 14, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '+',
                      style: GoogleFonts.dmSans(color: const Color(0xFFD0D0D0), fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    TextSpan(
                      text: '\$',
                      style: GoogleFonts.dmSans(color: const Color(0x75FCFCFC), fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    TextSpan(
                      text: '36',
                      style: GoogleFonts.dmSans(color: const Color(0xFFD0D0D0), fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              Text(
                'Trip #${index + 1}',
                style: GoogleFonts.dmSans(color: const Color(0x75FCFCFC), fontSize: 14, fontWeight: FontWeight.w400),
              ),
            ],
          )
        ],
      ),
    );
  }
}
