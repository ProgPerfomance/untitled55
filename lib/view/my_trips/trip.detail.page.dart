import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled55/components/app_bar_widget.dart';
import 'package:untitled55/view/my_trips/trip.controller.dart';
import 'package:untitled55/view/my_trips/trip.model.dart';
import 'package:untitled55/view/my_trips/widgets/tripdetail.issuemoney.page.dart';
import 'package:untitled55/view/my_trips/widgets/tripdetail.tracking.page.dart';

class TripDetailsPage extends GetView<MyTripController> {
  final TripModel data;
  const TripDetailsPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 4.0, left: 4.0, bottom: 4.0),
      child: Scaffold(
        backgroundColor: const Color(0xff121418),
        appBar: AppBarWidget(
          actions: [
            GestureDetector(
              onTap: () => controller.openNavigatorFor(data),
              child: Container(
                height: 40,
                margin: const EdgeInsets.only(left: 8),
                padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                decoration: BoxDecoration(
                  color: const Color(0xffFCFCFC).withOpacity(0.08),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/map.png'),
                    4.widthBox,
                    Text(
                      'Open map',
                      style: GoogleFonts.inter(color: const Color(0xFFD0D0D0), fontSize: 10, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        body: SizedBox.expand(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 5, bottom: 5),
                decoration: BoxDecoration(color: const Color(0xff202329), borderRadius: BorderRadius.circular(17)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Trip #${data.index}',
                                style: GoogleFonts.dmSans(fontSize: 14, color: const Color(0xffD0D0D0)),
                              ),
                              16.widthBox,
                              Image.asset("assets/images/TruckIcon.png"),
                              4.widthBox,
                              Text(
                                '44',
                                style: GoogleFonts.dmSans(color: const Color(0x75FCFCFC), fontSize: 14, fontWeight: FontWeight.w400),
                              ),
                              8.widthBox,
                              Image.asset("assets/images/TrailerIcon.png"),
                              4.widthBox,
                              Text(
                                '36',
                                style: GoogleFonts.dmSans(color: const Color(0x75FCFCFC), fontSize: 14, fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          if (data.status == TripStatus.closed)
                            Container(
                              height: 28,
                              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                              decoration: ShapeDecoration(
                                color: const Color(0x16EF4444),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(13),
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Trip is over',
                                    style: GoogleFonts.dmSans(color: const Color(0xFFEF4444), fontSize: 14, fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            )
                        ],
                      ),
                    ),
                    Container(height: 1, color: const Color(0xffFCFCFC).withOpacity(0.08)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Distance',
                                        style: GoogleFonts.dmSans(fontSize: 12, color: const Color(0xffFCFCFC).withOpacity(0.46)),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            '2260',
                                            style: GoogleFonts.dmSans(fontSize: 16, color: const Color(0xffD0D0D0)),
                                          ),
                                          Text(
                                            'ml',
                                            style: GoogleFonts.dmSans(fontSize: 16, color: const Color(0xffFCFCFC).withOpacity(0.46)),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  30.widthBox,
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Money',
                                        style: GoogleFonts.dmSans(fontSize: 12, color: const Color(0xffFCFCFC).withOpacity(0.46)),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            '\$',
                                            style: GoogleFonts.dmSans(fontSize: 16, color: const Color(0xffFCFCFC).withOpacity(0.46)),
                                          ),
                                          Text(
                                            '500',
                                            style: GoogleFonts.dmSans(fontSize: 16, color: const Color(0xffD0D0D0)),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Time',
                                    style: GoogleFonts.dmSans(fontSize: 12, color: const Color(0xffFCFCFC).withOpacity(0.46)),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '2',
                                        style: GoogleFonts.dmSans(fontSize: 16, color: const Color(0xffD0D0D0)),
                                      ),
                                      Text(
                                        'd',
                                        style: GoogleFonts.dmSans(fontSize: 16, color: const Color(0xffFCFCFC).withOpacity(0.46)),
                                      ),
                                      const Text(' '),
                                      Text(
                                        '16',
                                        style: GoogleFonts.dmSans(fontSize: 16, color: const Color(0xffD0D0D0)),
                                      ),
                                      Text(
                                        'h',
                                        style: GoogleFonts.dmSans(fontSize: 16, color: const Color(0xffFCFCFC).withOpacity(0.46)),
                                      ),
                                      const Text(' '),
                                      Text(
                                        '23',
                                        style: GoogleFonts.dmSans(fontSize: 16, color: const Color(0xffD0D0D0)),
                                      ),
                                      Text(
                                        'm',
                                        style: GoogleFonts.dmSans(fontSize: 16, color: const Color(0xffFCFCFC).withOpacity(0.46)),
                                      ),
                                      const Text(' '),
                                    ],
                                  ),
                                  16.heightBox,
                                ],
                              ),
                            ),
                          ],
                        ),
                        Image.asset('assets/images/Truck.png'),
                      ],
                    ),
                    Container(height: 1, color: const Color(0xffFCFCFC).withOpacity(0.08)),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Trips progress',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.dmSans(color: const Color(0xFFD0D0D0), fontSize: 14, fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '70%',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.dmSans(color: const Color(0xFFD0D0D0), fontSize: 14, fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              4.widthBox,
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '/',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.inter(
                                        color: const Color(0x75FCFCFC), fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: -0.05),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 4),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '100%',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.dmSans(color: const Color(0x75FCFCFC), fontSize: 12, fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(16, 10, 16, 20),
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
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 2),
                      decoration: const BoxDecoration(
                        color: Color(0xff1C1F24),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(17), topRight: Radius.circular(17)),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                            child: Row(
                              children: [
                                GestureDetector(
                                  onTap: () => controller.onChangeTripDetailsPage(0),
                                  child: Obx(() => Text(
                                        'Tracking',
                                        style: GoogleFonts.dmSans(
                                            fontSize: 14,
                                            color: controller.currentTripDetailsPage.value == 0
                                                ? const Color(0xffD0D0D0)
                                                : const Color(0xffFCFCFC).withOpacity(0.46)),
                                      )),
                                ),
                                15.widthBox,
                                GestureDetector(
                                  onTap: () => controller.onChangeTripDetailsPage(1),
                                  child: Obx(() => Text(
                                        'Issue Money Code',
                                        style: GoogleFonts.dmSans(
                                            fontSize: 14,
                                            color: controller.currentTripDetailsPage.value == 1
                                                ? const Color(0xffD0D0D0)
                                                : const Color(0xffFCFCFC).withOpacity(0.46)),
                                      )),
                                ),
                              ],
                            ),
                          ),
                          12.heightBox,
                          Container(height: 1, color: const Color(0xffFCFCFC).withOpacity(0.08)),
                        ],
                      ),
                    ),
                    Expanded(
                      child: PageView(
                        controller: controller.tripsDetailsPage,
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          TripDetailTrackingPage(trip: data),
                          TripDetailIssueMoneyPage(data: data),
                        ],
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
