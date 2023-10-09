import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled55/view/global_widgets/AppbarAndNotifications.dart';
import 'package:untitled55/view/global_widgets/CustomAppBar.dart';

import '../my_trips/trip.controller.dart';

class RequestInSendScreen extends StatefulWidget {
  const RequestInSendScreen({super.key});

  @override
  State<RequestInSendScreen> createState() => _RequestInSendScreenState();
}

class _RequestInSendScreenState extends State<RequestInSendScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121418),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                CustomAppBar(),
                SizedBox(
                  height: 3,
                ),
                Container(
                  width: context.width - 8,
                  height: context.height / 1.4,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xff202329)),
                  child: Column(
                    children: [
                      Container(
                        height: 240,
                        width: context.width - 48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Color(0xffFCFCFC).withOpacity(0.08),
                        ),
                        child: Image.asset(
                          'assets/images/newrequest.png',
                          height: 100,
                          width: 100,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Text(
                          'Request is send',
                          style: GoogleFonts.dmSans(
                              fontSize: 24, color: Color(0xffD0D0D0)),
                        ),
                      ),
                      Center(
                        child: Text(
                          'Within 60 minutes the dispatcher will contact you\nregarding your request',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.dmSans(
                              color: Color(0xffFCFCFC).withOpacity(0.46)),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: 90,
              width: context.width - 8,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                  color: Color(0xff202329)),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: InkWell(
                  onTap: () {
                    MyTripController().onWriteMoneyTap();
                  },
                  child: Container(
                    height: 44,
                    width: context.width - 32,
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    margin: const EdgeInsets.all(16),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      gradient: LinearGradient(
                          begin: const Alignment(1.00, -0.02),
                          end: const Alignment(-1, 0.02),
                          colors:
                          [ const Color(0xFF2897FF),const Color(0xFF2550EB),]
                      ),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                    ),
                    child: Center(child: Text('Back to trip', style: GoogleFonts.dmSans(color: Color(0xffffffff)),)),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
