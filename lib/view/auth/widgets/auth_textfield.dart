import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled55/domain/AuthUserFromLogin.dart';

import '../../../ui/text_style.dart';

TextEditingController passwordController = TextEditingController();
TextEditingController emailController = TextEditingController();
class AuthTextField extends StatefulWidget {
  const AuthTextField({super.key});

  @override
  State<AuthTextField> createState() => _AuthTextFieldState();
}

class _AuthTextFieldState extends State<AuthTextField> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    bool active = true;
    return Column(
      children: [
        SizedBox(
          width: width * 0.95,
          height: height * 0.06,
          child: TextField(
            style: TextStyle(color: Color(0xffffffff)),
            controller: emailController,
            onChanged: (value) {
              context.read<AuthUserFromLogin>().login = emailController.text;
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  4,
                ),
              ),
              hintText: 'email',
              hintStyle: HeadlineTextStyle.style400w14.copyWith(
                color: Colors.grey.shade500,
              ),
              label: Text(
                'email',
                style: HeadlineTextStyle.style500w14.copyWith(
                  color: Colors.grey.shade500,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: height * 0.02),
        SizedBox(
          width: width * 0.95,
          height: height * 0.06,
          child: TextField(
            style: TextStyle(color: Color(0xffffffff)),
            controller: passwordController,
            onChanged: (value) {
              context.read<AuthUserFromLogin>().password = passwordController.text;
            },
            obscureText: active,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    4,
                  ),
                ),
                hintStyle: HeadlineTextStyle.style400w14.copyWith(
                  color: Colors.grey.shade500,
                ),
                label: Text(
                  'password',
                  style: HeadlineTextStyle.style500w14.copyWith(
                    color: Colors.grey.shade500,
                  ),
                ),
                suffixIcon: IconButton(
                  icon: const Icon(
                    Icons.visibility_off_outlined,
                  ),
                  onPressed: () {
                    active != active;
                  },
                )),
          ),
        ),
      ],
    );
  }
}
