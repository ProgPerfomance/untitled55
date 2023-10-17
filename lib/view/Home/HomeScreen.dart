import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:untitled55/domain/GetUserInfo.dart';
import 'package:untitled55/view/Account/AccountScreen.dart';
import 'package:untitled55/view/Settlement/SettlementScreen.dart';
import 'package:untitled55/view/chats/view/chats_screen.dart';
import 'package:untitled55/view/global_widgets/navbarWidget.dart';
import 'package:untitled55/view/news/NewsScreen.dart';
import 'package:untitled55/view/rating/RatingScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121418),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  Row(
                    children: [
                      16.widthBox,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          5.heightBox,
                          Text(
                            'Hello',
                            style: GoogleFonts.dmSans(
                                fontSize: 12,
                                color:
                                    const Color(0xffFCFCFC).withOpacity(0.46)),
                          ),
                          3.widthBox,
                          Text(
                            'Thusday 04.05.2023',
                            style: GoogleFonts.dmSans(
                                fontSize: 14, color: const Color(0xffD0D0D0)),
                          )
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      8.widthBox,
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: const Color(0xffFCFCFC).withOpacity(0.08),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Image.asset(
                              'assets/images/NotificationWhite.png'),
                        ),
                      ),
                      16.widthBox,
                    ],
                  ),
                ],
              ),
            ),
            3.heightBox,
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AccountScreen()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: Container(
                      width: context.width - 12,
                      height: 72,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color(0xff202329),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                16.widthBox,
                                Image.asset('assets/images/testprof.png'),
                                3.widthBox,
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Good Morning',
                                      style: GoogleFonts.dmSans(
                                        fontSize: 12,
                                        color: const Color(0xffFCFCFC)
                                            .withOpacity(0.46),
                                      ),
                                    ),
                                    Text(
                                      context.watch<GetUserInfo>().name,
                                      style: GoogleFonts.dmSans(
                                        fontSize: 16,
                                        color: const Color(0xffD0D0D0),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 16.0),
                              child: Image.asset('assets/images/Arrow.png'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                4.widthBox,
              ],
            ),
            3.heightBox,
            Container(
              width: context.width,
              height: 72,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color(0xff202329),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  16.widthBox,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Truck:',
                        style: GoogleFonts.dmSans(
                          fontSize: 12,
                          color: const Color(0xffFCFCFC).withOpacity(0.46),
                        ),
                      ),
                      Text(
                        context.watch<GetUserInfo>().truck_name.toString(),
                        style: GoogleFonts.dmSans(
                          fontSize: 16,
                          color: const Color(0xffD0D0D0),
                        ),
                      ),
                    ],
                  ),
                  20.widthBox,
                  Container(
                    height: 27,
                    width: 2,
                    color: const Color(0xffFCFCFC).withOpacity(0.08),
                  ),
                  20.widthBox,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Trailer:',
                        style: GoogleFonts.dmSans(
                          fontSize: 12,
                          color: const Color(0xffFCFCFC).withOpacity(0.46),
                        ),
                      ),
                      Text(
                        context.watch<GetUserInfo>().trailer_name.toString(),
                        style: GoogleFonts.dmSans(
                          fontSize: 16,
                          color: const Color(0xffD0D0D0),
                        ),
                      ),
                    ],
                  ),
                  20.widthBox,
                  Container(
                    height: 27,
                    width: 2,
                    color: const Color(0xffFCFCFC).withOpacity(0.08),
                  ),
                  20.widthBox,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Vehicle:',
                        style: GoogleFonts.dmSans(
                          fontSize: 12,
                          color: const Color(0xffFCFCFC).withOpacity(0.46),
                        ),
                      ),
                      Text(
                        context.watch<GetUserInfo>().vehicleName,
                        style: GoogleFonts.dmSans(
                          fontSize: 16,
                          color: const Color(0xffD0D0D0),
                        ),
                      ),
                    ],
                  ),
                  7.widthBox,
                  // Container(
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(111),
                  //     color: const Color(0xff32A5D7).withOpacity(0.08),
                  //   ),
                  //   height: 40,
                  //   width: 104,
                  //   child: Center(
                  //     child: Text(
                  //       'Vacation',
                  //       style:
                  //           GoogleFonts.dmSans(color: const Color(0xff32A5D7)),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  //2551EB
                  width: 12,
                  height: 2,
                  color: const Color(0xffFCFCFC).withOpacity(0.08),
                ),
                Container(
                  width: 60,
                  height: 3,
                  color: const Color(0xff2551EB),
                ),
                Container(
                  width: context.width - 72,
                  height: 2,
                  color: const Color(0xffFCFCFC).withOpacity(0.08),
                ),
              ],
            ),
            16.heightBox,
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const ChatsScreen()));
                  },
                  child: Container(
                    height: 106,
                    width: context.width / 2 - 1.5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color(0xff202329)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'assets/images/mychat.png',
                                height: 56,
                              ),
                              Image.asset(
                                'assets/images/Arrow.png',
                                height: 56,
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'My chat',
                              style: GoogleFonts.dmSans(
                                fontSize: 14,
                                color: const Color(0xffD0D0D0),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                3.widthBox,
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const SettlementScreen()));
                    },
                  child: Container(
                    height: 106,
                    width: context.width / 2 - 1.5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color(0xff202329)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'assets/images/mysetl.png',
                                height: 56,
                              ),
                              Image.asset(
                                'assets/images/Arrow.png',
                                height: 56,
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'My IMC History',
                              style: GoogleFonts.dmSans(
                                fontSize: 14,
                                color: const Color(0xffD0D0D0),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            3.heightBox,
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => NewsScreen()));
                  },
                  child: Container(
                    height: 106,
                    width: context.width / 2 - 1.5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color(0xff202329)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'assets/images/mynews.png',
                                height: 56,
                              ),
                              Image.asset(
                                'assets/images/Arrow.png',
                                height: 56,
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'My News',
                              style: GoogleFonts.dmSans(
                                fontSize: 14,
                                color: const Color(0xffD0D0D0),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                3.widthBox,
                Container(
                  height: 106,
                  width: context.width / 2 - 1.5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color(0xff202329)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              'assets/images/moneycode.png',
                              height: 56,
                            ),
                            Image.asset(
                              'assets/images/Arrow.png',
                              height: 56,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Issue Money Code',
                            style: GoogleFonts.dmSans(
                              fontSize: 14,
                              color: const Color(0xffD0D0D0),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: const NavBarWidget(selectedIndex: 0),
    );
  }
}
