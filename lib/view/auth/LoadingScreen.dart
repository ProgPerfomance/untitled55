import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:untitled55/view/Home/HomeScreen.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
    });
    return Scaffold(
      backgroundColor: const Color(0xff121418),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          'Welcome Back',
          style: GoogleFonts.dmSans(
              fontSize: 12, color: const Color(0xffFCFCFC).withOpacity(0.46)),
        ),
        Text('Loading...', style: GoogleFonts.dmSans(
          fontSize: 32,
          fontWeight: FontWeight.bold,
          color: const Color(0xffD0D0D0),
        ),),
        Center(
            child: Lottie.asset('assets/anims/loader.json',
                height: 170, width: 170)),
      ]),
    );
  }
}
