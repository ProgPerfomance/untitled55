import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../my_trips/trip.controller.dart';

class SelectCategoryBottomSheet extends StatefulWidget {
  const SelectCategoryBottomSheet({super.key});

  @override
  State<SelectCategoryBottomSheet> createState() =>
      _SelectCategoryBottomSheetState();
}

class _SelectCategoryBottomSheetState extends State<SelectCategoryBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        height: context.height / 2,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(12),
            topLeft: Radius.circular(12),
          ),
          color: const Color(0xff202329),
          border: Border.all(color: const Color(0xffFCFCFC).withOpacity(0.46), width: 0.5),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            30.heightBox,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Select Category',
                style: GoogleFonts.dmSans(fontSize: 16, color: const Color(0xffD0D0D0)),
              ),
            ),
            3.heightBox,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text('Remember General limit for drivers is \$300 for trip',style: GoogleFonts.dmSans(
                fontSize: 12,
                color: const Color(0xffFCFCFC).withOpacity(0.46),
              ),),
            ),
            10.heightBox,
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Lamper', style: GoogleFonts.dmSans(color: const Color(0xffD0D0D0)),),
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: const Color(0xffffffff))
                        ),
                      )

                    ],
                  ),
                  28.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Late Fee', style: GoogleFonts.dmSans(color: const Color(0xffD0D0D0)),),
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(color: const Color(0xffffffff))
                        ),
                      )

                    ],
                  ),
                  28.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Wash out', style: GoogleFonts.dmSans(color: const Color(0xffD0D0D0)),),
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(color: const Color(0xffffffff))
                        ),
                      )

                    ],
                  ),
                  28.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Pallets', style: GoogleFonts.dmSans(color: const Color(0xffD0D0D0)),),
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(color: const Color(0xffffffff))
                        ),
                      )

                    ],
                  ),
                  10.heightBox,
                ],
              ),
            ),
            Container(height: 0.5, width: context.width +32,
                color: const Color(0xffFCFCFC).withOpacity(0.46)),
            15.heightBox,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: InkWell(
                onTap: () {
                  MyTripController().onSelectCategoryTap();
                },
                child: Container(
                  height: 44,
                  width: context.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: const LinearGradient(
                      colors: [Color(0xff2563EB),Color(0xff00C2FF),],
                    ),
                  ),
                  child: Center(
                    child: Text('Select',style: GoogleFonts.dmSans(
                      color: const Color(0xffffffff),
                    ),),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
