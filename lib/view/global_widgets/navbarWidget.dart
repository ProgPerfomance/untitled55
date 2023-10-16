import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBarWidget extends StatelessWidget {
  final int selectedIndex;
  const NavBarWidget({super.key, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 3.0, right: 3.0),
            child: Container(
              height: 55,
              width: context.width - 83,
              padding: const EdgeInsets.only(left: 27.0, top: 11, right: 33),
              decoration: BoxDecoration(
                color: const Color(0xff202329),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed("home");
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Image.asset('assets/images/Dashboard.png'),
                            Text(
                              'Dashboard',
                              style: GoogleFonts.dmSans(
                                  fontSize: 12, color: selectedIndex == 0 ? const Color(0xFFD0D0D0) : const Color(0xffFCFCFC).withOpacity(0.46)),
                            ),
                          ],
                        ),
                        if (selectedIndex == 0) const SelectedLine(),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed("/mytrips");
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Image.asset('assets/images/Trip.png'),
                            Text(
                              'My trip',
                              style: GoogleFonts.dmSans(
                                  fontSize: 12, color: selectedIndex == 1 ? const Color(0xFFD0D0D0) : const Color(0xffFCFCFC).withOpacity(0.46)),
                            ),
                          ],
                        ),
                        if (selectedIndex == 1) const SelectedLine(),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed("profile");
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Image.asset('assets/images/user.png'),
                            Text(
                              'User',
                              style: GoogleFonts.dmSans(
                                  fontSize: 12, color: selectedIndex == 2 ? const Color(0xFFD0D0D0) : const Color(0xffFCFCFC).withOpacity(0.46)),
                            ),
                          ],
                        ),
                        if (selectedIndex == 2) const SelectedLine(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SelectedLine extends StatelessWidget {
  const SelectedLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 4,
      decoration: const ShapeDecoration(
        color: Color(0xFF2551EB),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ),
        ),
        shadows: [BoxShadow(color: Color(0xFF2551EB), blurRadius: 21, offset: Offset(1, 7), spreadRadius: 0)],
      ),
    );
  }
}
