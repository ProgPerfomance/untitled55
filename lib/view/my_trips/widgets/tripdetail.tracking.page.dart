import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled55/view/global_widgets/buttons.widget.dart';
import 'package:untitled55/view/my_trips/trip.controller.dart';
import 'package:untitled55/view/my_trips/trip.model.dart';

class TripDetailTrackingPage extends StatelessWidget {
  final TripModel trip;
  const TripDetailTrackingPage({super.key, required this.trip});

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<MyTripController>();
    return Container(
      decoration: const BoxDecoration(color: Color(0xFF202329)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          20.heightBox,
          if (trip.status != TripStatus.closed)
            Container(
              height: 28,
              padding: const EdgeInsets.symmetric(vertical: 4),
              margin: const EdgeInsets.only(left: 16, right: 16),
              decoration: ShapeDecoration(
                color: const Color(0x14D7BD32),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Pick Up',
                    style: GoogleFonts.dmSans(color: const Color(0xFFD7BC31), fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          Expanded(
            child: ListView(
              itemExtent: 56,
              children: List.generate(
                15,
                (index) => ListTile(
                  minLeadingWidth: 32,
                  leading: Column(
                    mainAxisAlignment: index != 14 ? MainAxisAlignment.end : MainAxisAlignment.start,
                    children: [
                      if (index != 0) Container(width: 3, height: 12, color: const Color(0xFF32343A)),
                      Container(
                        width: 32,
                        height: 32,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF18B630),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.33)),
                        ),
                        child: const Icon(Icons.check, color: Colors.white, size: 16),
                      ),
                      if (index != 14) Container(width: 3, height: 12, color: const Color(0xFF32343A)),
                    ],
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.check, color: const Color(0xFFFCFCFC).withOpacity(.46), size: 16),
                      8.widthBox,
                      Text("54 Radley Street, Off 25",
                          style: GoogleFonts.dmSans(color: const Color(0xFFD0D0D0), fontSize: 16, fontWeight: FontWeight.w400)),
                    ],
                  ),
                  subtitle: Row(
                    children: [
                      24.widthBox,
                      Text('Mon 23 Mar.  11:00',
                          style: GoogleFonts.dmSans(color: const Color(0x75FCFCFC), fontSize: 14, fontWeight: FontWeight.w400)),
                    ],
                  ),
                ),
              ),
            ),
          ),
          if (trip.status != TripStatus.closed)
            BlueButton(
              onTap: () => controller.onTripCheckinTap(trip),
              child: Text(
                'Check In',
                textAlign: TextAlign.center,
                style: GoogleFonts.dmSans(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
              ),
            ),
          if (trip.status == TripStatus.closed)
            BlueButton(
              onTap: () => controller.onEndTripTap(trip),
              child: Text(
                'End trip',
                textAlign: TextAlign.center,
                style: GoogleFonts.dmSans(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
              ),
            ),
        ],
      ),
    );
  }
}
