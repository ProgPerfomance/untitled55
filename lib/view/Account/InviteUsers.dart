import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/app_bar_widget.dart';

class InviteUsers extends StatefulWidget {
  const InviteUsers({super.key});

  @override
  State<InviteUsers> createState() => _InviteUsersState();
}

class _InviteUsersState extends State<InviteUsers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121418),
      appBar: const AppBarWidget(showActions: false),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: Container(
            width: context.width - 8,
            child:  Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('A', style: GoogleFonts.dmSans(color: Color(0xffD0D0D0)),),
                  Container(
                    height: 62,
                    width: context.width - 32,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xffFCFCFC).withOpacity(0.08),

                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                            CircleAvatar(
                              radius: 16,
                            ),
                          SizedBox(width: 4,),
                          Column(
                            children: [
                              Text('Alx Lipshutz', style: GoogleFonts.dmSans(color: Color(0xffD0D0D0)),),
                              Text('(800)262-3394', style: GoogleFonts.dmSans(color: Color(0xffFCFCFC).withOpacity(0.46)),),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
