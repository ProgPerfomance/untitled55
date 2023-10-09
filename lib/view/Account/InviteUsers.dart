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
          padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 3),
          child: Container(
            width: context.width - 8,
            height: context.height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Color(0xff202329)
            ),
            child:  Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 13,),
                  TextField(
                    style: GoogleFonts.dmSans(color: const Color(0xFFFCFCFC), fontSize: 12, fontWeight: FontWeight.w500),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(width: 1, color: Color(0x75FCFCFC)),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 1, color: Color(0x75FCFCFC)),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 1, color: Color(0x75FCFCFC)),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      prefixIcon: const Icon(Icons.search, color: Color(0x75FCFCFC)),
                      isDense: true,
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      hintStyle: GoogleFonts.dmSans(color: const Color(0x75FCFCFC), fontSize: 14, fontWeight: FontWeight.w400),
                      hintText: "Search",
                    ),
                  ),
                  SizedBox(height: 15,),
                  Text('A', style: GoogleFonts.dmSans(color: const Color(0xffD0D0D0)),),
                  SizedBox(height: 7,),
                  Container(
                    height: 62,
                    width: context.width - 32,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color(0xffFCFCFC).withOpacity(0.08),

                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                                const CircleAvatar(
                                  radius: 16,
                                ),
                              const SizedBox(width: 7,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Text('Alx Lipshutz', style: GoogleFonts.dmSans(color:  const Color(0xffD0D0D0)),),
                                  Text('(800)262-3394', style: GoogleFonts.dmSans(color: const Color(0xffFCFCFC).withOpacity(0.46)),),
                                ],
                              ),
                            ],
                          ),
                          Container(
                            width: 86,
                            height: 32,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Color(0xffFCFCFC).withOpacity(0.08),
                            ),
                            child: Center(child: Text('Send invite', style: GoogleFonts.dmSans(color: Color(0xffFFFFFF)),)),
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
