import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:awesome_extensions/awesome_extensions.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final List<Widget> actions;
  final bool showActions;
  const AppBarWidget({Key? key, this.actions = const [], this.showActions = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xff202329),
      elevation: 0,
      actions: [
        Column(
          children: [
            Container(
              height: 5,
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
              width: context.width - 8,
              decoration: const BoxDecoration(
                color: Color(0xff202329),
                // borderRadius: BorderRadius.only(
                //   bottomLeft: Radius.circular(17),
                //   bottomRight: Radius.circular(17),
                // ),
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(17),
                  bottomRight: Radius.circular(17),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 5.0, right: 16.0, left: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/images/back.png'),
                          3.widthBox,
                          Text(
                            'Back',
                            style: GoogleFonts.dmSans(fontSize: 14, color: const Color(0xffD0D0D0)),
                          ),
                        ],
                      ),
                      if (!showActions) const SizedBox(width: 40, height: 40),
                      if (showActions)
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
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: const Color(0xffFCFCFC).withOpacity(0.08),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Center(
                                child: Image.asset('assets/images/NotificationWhite.png'),
                              ),
                            ),
                            ...actions,
                          ],
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
