
import 'package:flutter/material.dart';
import 'package:untitled55/ui/colors.dart';
import 'package:untitled55/view/auth/widgets/auth_container.dart';
import 'package:untitled55/view/auth/widgets/auth_textfield.dart';

import '../../constants/images_path.dart';
import '../../constants/text.dart';
import '../../ui/text_style.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xff121418),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: height * 0.15,
              ),
              Image.asset(logo),
              SizedBox(
                height: height * 0.05,
              ),
              Container(
                width: double.infinity,
                height: height * 0.76,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  color: Colors.grey.shade900,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Text(
                      login,
                      style: HeadlineTextStyle.style400w12.copyWith(
                        color: Colors.grey.shade400,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Text(
                      welcome,
                      style: HeadlineTextStyle.style700w32
                          .copyWith(color: ProjectColors.white),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    const AuthTextField(),
                    SizedBox(height: height * 0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.02),
                          child: Text(
                            forgot,
                            style: HeadlineTextStyle.style500w14
                                .copyWith(color: ProjectColors.white),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    const AuthContainer(),
                    SizedBox(height: height * 0.02),
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
