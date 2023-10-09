
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../components/app_bar_widget.dart';

class MoneyHistoryFitlerBottomSheet extends StatefulWidget {
  const MoneyHistoryFitlerBottomSheet({super.key});

  @override
  State<MoneyHistoryFitlerBottomSheet> createState() => _MoneyHistoryScreenState();
}

class _MoneyHistoryScreenState extends State<MoneyHistoryFitlerBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height / 1.2,
      width: context.width,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(16),
          topLeft: Radius.circular(16),
        ),
        color: Color(0xff202329),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 32,),
              Text('Category', style: GoogleFonts.dmSans(
                color: const Color(0xffD0D0D0),
              ),),
       const SizedBox(height: 17,),
       SingleChildScrollView(
           scrollDirection: Axis.horizontal,
           child: Row(
                  children: [

                    Container(
                      height: 40,
                      width: 46,
                      decoration: BoxDecoration(
                        color: const Color(0xffFCFCFC).withOpacity(0.08),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          'All',
                          style: GoogleFonts.dmSans(
                            color: const Color(0xffD0D0D0),
                          ),
                        ),
                      ),
                    ),
                    4.widthBox,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: Container(
                        height: 40,

                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color:
                              const Color(0xffFCFCFC).withOpacity(0.08),
                            )),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12.0),
                            child: Text(
                              'Lumper',
                              style: GoogleFonts.dmSans(
                                color: const Color(0xffD0D0D0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: Container(
                        height: 40,

                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xffFCFCFC).withOpacity(0.08),
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: Center(
                            child: Text(
                              'Wash out',
                              style: GoogleFonts.dmSans(
                                color: const Color(0xffD0D0D0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: Container(
                        height: 40,

                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xffFCFCFC).withOpacity(0.08),
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: Center(
                            child: Text(
                              'Pallets',
                              style: GoogleFonts.dmSans(
                                color: const Color(0xffD0D0D0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: Container(
                        height: 40,

                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xffFCFCFC).withOpacity(0.08),
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: Center(
                            child: Text(
                              'IMC',
                              style: GoogleFonts.dmSans(
                                color: const Color(0xffD0D0D0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
       ),
          TableCalendar(
            firstDay: DateTime.utc(2010, 10, 16),
            lastDay: DateTime.utc(2030, 3, 14),
            focusedDay: DateTime.now(),
          ),
              Row(
                children: [
                  Container(
                    width: context.width / 2 -24,
                    height: 44,
                    decoration: BoxDecoration(
                      color: const Color(0xffFCFCFC).withOpacity(0.08),
                      borderRadius: BorderRadius.circular(8)
                    ),
                    child: Center(
                      child: Text('Cancel', style: GoogleFonts.dmSans(color: const Color(0xffD0D0D0)),),
                    ),
                  ),
                  const SizedBox(width: 16,),
                  Container(
                    width: context.width / 2 -24,
                    height: 44,
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            begin: Alignment(1.00, -0.02),
                            end: Alignment(-1, 0.02),
                            colors:
                            [ Color(0xFF2897FF),Color(0xFF2550EB),]
                        ),
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child: Center(
                      child: Text('Select', style: GoogleFonts.dmSans(color: const Color(0xffD0D0D0)),),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30,),
            ],
          ),
        ),
      ),
    );
  }
}
