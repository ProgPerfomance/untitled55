import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled55/view/global_widgets/AppbarAndNotifications.dart';
import 'package:untitled55/view/global_widgets/buttons.widget.dart';
import 'package:untitled55/view/my_trips/trip.controller.dart';
import 'package:untitled55/view/my_trips/tripinfo/tripinfo.controller.dart';

class WriteMoneyScreen extends StatefulWidget {
  const WriteMoneyScreen({super.key});

  @override
  State<WriteMoneyScreen> createState() => _WriteMoneyScreenState();
}

class _WriteMoneyScreenState extends State<WriteMoneyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121418),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
        child: Column(
          children: [
            const AppBarAndNotifications(),
            3.heightBox,
            Container(
              height: 300,
              width: context.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color(0xff202329),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  24.heightBox,
                  Center(
                    child: Text('Amount', style: GoogleFonts.dmSans(
                      color: const Color(0xffFCFCFC).withOpacity(0.46),
                    ),),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('\$', style: GoogleFonts.dmSans(fontSize: 48,color: const Color(0xffFCFCFC).withOpacity(0.46),),),
                      Text('\58', style: GoogleFonts.dmSans(fontSize: 48, color: const Color(0xffffffff)),),
                      Text('.37', style: GoogleFonts.dmSans(fontSize: 48,color: const Color(0xffFCFCFC).withOpacity(0.46),),),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Lamper', style: GoogleFonts.dmSans(
                          color: Color(0xffFCFCFC).withOpacity(0.46),
                        ),),
                        Row(
                          children: [
                            Text('\$', style: GoogleFonts.dmSans(fontSize: 12,color: const Color(0xffFCFCFC).withOpacity(0.46),),),
                            Text('100', style: GoogleFonts.dmSans(fontSize: 12, color: const Color(0xffffffff)),),
                            Text(' / ', style: GoogleFonts.dmSans(fontSize: 10,color: const Color(0xffFCFCFC).withOpacity(0.46),),),
                            Text('\$250', style: GoogleFonts.dmSans(fontSize: 11,color: const Color(0xffFCFCFC).withOpacity(0.46),),),
                          ],
                        ),
                      ],
                    ),
                  ),
                  10.heightBox,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Stack(
                      children: [
                        Container(
                          height: 12,
                          width: context.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Color(0xffFCFCFC).withOpacity(0.08)
                          ),
                        ),
                        Container(
                          height: 12,
                          width: context.width /3,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Color(0xff2563EB),
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
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
                      child: Center(child: Text('Request money', style: GoogleFonts.dmSans(color: Color(0xffffffff)),)),
                    ),
                  ),
                  Center(
                    child: Container(
                      height: 44,
                      width: context.width - 38,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: Color(0xffFCFCFC).withOpacity(0.08), width: 0.5)
                      ),
                      child:  Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Text('Note', style: GoogleFonts.dmSans(color: Color(0xffFCFCFC).withOpacity(0.46)),),
                      ),
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
