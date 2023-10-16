import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TwoBlock extends StatelessWidget {
  final vehiclename;
  const TwoBlock({super.key, required this.vehiclename});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 64,
      width: context.width - 8,
      decoration: BoxDecoration(
          color: const Color(0xff202329),
          borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Truck:',
                    style: GoogleFonts.dmSans(
                      fontSize: 12,
                      color: const Color(0xffFCFCFC).withOpacity(0.46),
                    ),
                  ),
                  Text(
                    '5263',
                    style: GoogleFonts.dmSans(
                      fontSize: 16,
                      color: const Color(0xffD0D0D0),
                    ),
                  ),
                ],
              ),
              20.widthBox,
              Container(
                height: 27,
                width: 2,
                color: const Color(0xffFCFCFC).withOpacity(0.08),
              ),
              20.widthBox,
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Trailer:',
                    style: GoogleFonts.dmSans(
                      fontSize: 12,
                      color: const Color(0xffFCFCFC).withOpacity(0.46),
                    ),
                  ),
                  Text(
                    '5263',
                    style: GoogleFonts.dmSans(
                      fontSize: 16,
                      color: const Color(0xffD0D0D0),
                    ),
                  ),
                ],
              ),
              20.widthBox,
              Container(
                height: 27,
                width: 2,
                color: const Color(0xffFCFCFC).withOpacity(0.08),
              ),
              20.widthBox,
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Vehicle:',
                    style: GoogleFonts.dmSans(
                      fontSize: 12,
                      color: const Color(0xffFCFCFC).withOpacity(0.46),
                    ),
                  ),
                  Text(
                    vehiclename,
                    style: GoogleFonts.dmSans(
                      fontSize: 16,
                      color: const Color(0xffD0D0D0),
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
}
