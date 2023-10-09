import 'package:flutter/material.dart';

class BlueButton extends StatelessWidget {
  final Function()? onTap;
  final Widget child;

  const BlueButton({super.key, this.onTap, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFFCFCFC).withOpacity(0.08),
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(17), topRight: Radius.circular(17)),
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 44,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          margin: const EdgeInsets.all(16),
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            gradient: LinearGradient(
              begin: const Alignment(1.00, -0.02),
              end: const Alignment(-1, 0.02),
              colors: onTap != null
                  ? [const Color(0xFF2550EB), const Color(0xFF2897FF)]
                  : [const Color.fromARGB(255, 42, 44, 51), const Color.fromARGB(255, 68, 68, 68)],
            ),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
          child: child,
        ),
      ),
    );
  }
}
