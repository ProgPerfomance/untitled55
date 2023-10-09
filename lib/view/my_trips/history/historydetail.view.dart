import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled55/components/app_bar_widget.dart';
import 'package:untitled55/view/my_trips/history/historydetail.controller.dart';

class HistoryDetailView extends GetView<HistoryDetailContoller> {
  const HistoryDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HistoryDetailContoller());
    return Scaffold(
      backgroundColor: const Color(0xff121418),
      appBar: const AppBarWidget(showActions: false),
      body: Padding(
        padding: const EdgeInsets.only(top: 3),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFFFCFCFC).withOpacity(0.08),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          clipBehavior: Clip.antiAlias,
                          padding: const EdgeInsets.all(20),
                          decoration: ShapeDecoration(
                            color: const Color(0x14FCFCFC),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24.60),
                            ),
                          ),
                          child: Image.asset("assets/images/Water.png", width: 40, height: 40),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'Wash out',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.dmSans(color: const Color(0xFFD0D0D0), fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Andrey Bozhenko, 20 Jun 2021',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.dmSans(color: const Color(0x75FCFCFC), fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 12),
                    Container(
                      height: 52,
                      margin: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                      padding: const EdgeInsets.all(12),
                      decoration: ShapeDecoration(
                        color: const Color(0x14FCFCFC),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: '+\$',
                                  style: GoogleFonts.dmSans(color: const Color(0x75FCFCFC), fontSize: 20, fontWeight: FontWeight.w500),
                                ),
                                TextSpan(
                                  text: '37',
                                  style: GoogleFonts.dmSans(color: const Color(0xFFD0D0D0), fontSize: 20, fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Wash out',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.dmSans(color: const Color(0xFFD0D0D0), fontSize: 14, fontWeight: FontWeight.w400),
                          ),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: '\$',
                                  style: GoogleFonts.dmSans(color: const Color(0x75FCFCFC), fontSize: 14, fontWeight: FontWeight.w500),
                                ),
                                TextSpan(
                                  text: '37',
                                  style: GoogleFonts.dmSans(color: const Color(0xFFD0D0D0), fontSize: 14, fontWeight: FontWeight.w500),
                                ),
                                TextSpan(
                                  text: ' / \$250',
                                  style: GoogleFonts.dmSans(color: const Color(0x75FCFCFC), fontSize: 12, fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
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
              const SizedBox(height: 4),
              Container(
                padding: const EdgeInsets.all(16),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: const Color(0xFF202329),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Column(
                  children: [
                    GestureDetector(
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
                        child: Row(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                color: const Color(0xFF2563EB),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                              ),
                              child: const Icon(Icons.download, color: Colors.white),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Send receipt',
                                    style: GoogleFonts.dmSans(color: const Color(0xFFD0D0D0), fontSize: 16, fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    '# DB72-JG869-382',
                                    style: GoogleFonts.dmSans(color: const Color(0x75FCFCFC), fontSize: 12, fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                            ),
                            const Icon(Icons.arrow_forward_ios, color: Color(0x75FCFCFC)),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    GestureDetector(
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
                        child: Row(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                color: const Color(0xFF2563EB),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                              ),
                              child: const Icon(Icons.help_outline, color: Colors.white),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Ask on Question',
                                    style: GoogleFonts.dmSans(color: const Color(0xFFD0D0D0), fontSize: 16, fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    'Need help?',
                                    style: GoogleFonts.dmSans(color: const Color(0x75FCFCFC), fontSize: 12, fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                            ),
                            const Icon(Icons.arrow_forward_ios, color: Color(0x75FCFCFC)),
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
    );
  }
}
