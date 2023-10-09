import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled55/view/global_widgets/AppbarAndNotifications.dart';

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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Lamper'),
                      Row(
                        children: [
                          Text('\$', style: GoogleFonts.dmSans(fontSize: 12,color: const Color(0xffFCFCFC).withOpacity(0.46),),),
                          Text('\58', style: GoogleFonts.dmSans(fontSize: 12, color: const Color(0xffffffff)),),
                          Text('.37', style: GoogleFonts.dmSans(fontSize: 12,color: const Color(0xffFCFCFC).withOpacity(0.46),),),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
