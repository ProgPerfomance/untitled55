import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _AppBarAndNotificationsState();
}

class _AppBarAndNotificationsState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70,
          width: context.width - 8,
          decoration: const BoxDecoration(
            color: Color(0xff202329),
          ),
        ),
        Container(
          height: 1,
          width: context.width - 8,
          color: const Color(0xffffffff).withOpacity(0.2),
        ),
        Container(
          height: 56,
          width: context.width - 8,
          decoration: const BoxDecoration(
              color: Color(0xff202329),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(17),
                bottomRight: Radius.circular(17),
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Row(
                  children: [
                    16.widthBox,
                    Image.asset('assets/images/back.png'),
                    3.widthBox,
                    Text(
                      'Back',
                      style: GoogleFonts.dmSans(fontSize: 14, color: const Color(0xffD0D0D0)),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: const Color(0xffFCFCFC).withOpacity(0.08),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Image.asset('assets/images/Search.png'),
                    ),
                  ),
                  8.widthBox,
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
