import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:untitled55/domain/GetUserInfo.dart';
import 'package:untitled55/view/Account/widgets/2block.dart';
import 'package:untitled55/view/global_widgets/navbarWidget.dart';
import 'package:untitled55/view/user/UserScreen.dart';

bool val = false;

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    final watchUserModel = context.watch<GetUserInfo>();
    return Scaffold(
      backgroundColor: const Color(0xff121418),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
        child: SingleChildScrollView(
          child: Column(
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
                height: 50,
                width: context.width - 8,
                decoration: const BoxDecoration(
                    color: Color(0xff202329),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(17),
                      bottomRight: Radius.circular(17),
                    )),
                child: InkWell(
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
              ),
              const SizedBox(
                height: 3,
              ),
              Container(
                height: 291,
                width: context.width - 8,
                decoration: BoxDecoration(color: const Color(0xff202329), borderRadius: BorderRadius.circular(12)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 24,
                    ),
                    Image.asset('assets/images/iconaccount.png'),
                    Text(
                      watchUserModel.name,
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: const Color(0xffD0D0D0),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(111),
                        color: const Color(0xff32A5D7).withOpacity(0.08),
                      ),
                      height: 40,
                      width: 104,
                      child: Center(
                        child: Text(
                          'Vacation',
                          style: GoogleFonts.dmSans(color: const Color(0xff32A5D7)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      watchUserModel.email,
                      style: GoogleFonts.dmSans(color: const Color(0xffffffff).withOpacity(0.5)),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: context.width / 3),
                      child: SizedBox(height: 30,
                        child: ListView.builder(itemBuilder: (context, index) {
                          return  Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 2.0),
                            child: Container(
                              height: 20,
                              width: 47,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(color: Colors.white.withOpacity(0.08)),
                                color: const Color(0xffFCFCFC).withOpacity(0.08),
                              ),
                              child: Center(
                                child: Text(
                                  watchUserModel.teams[index]['name'],
                                  style: GoogleFonts.inter(
                                    fontSize: 10,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          );
                        }, itemCount: watchUserModel.teams.length, scrollDirection: Axis.horizontal,),
                      ),
                    ),
                  ],
                ),
              ),
              3.heightBox,
              TwoBlock(vehiclename: watchUserModel.vehicleName,),
              4.heightBox,
              Container(
                height: 52,
                width: context.width - 8,
                decoration: BoxDecoration(color: const Color(0xff202329), borderRadius: BorderRadius.circular(12)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        16.widthBox,
                        Image.asset('assets/images/Notification.png'),
                        4.widthBox,
                        Text(
                          'Turn on notifications',
                          style: GoogleFonts.dmSans(
                            color: const Color(0xffFCFCFC),
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        CupertinoSwitch(
                            value: val,
                            onChanged: (v) {
                              val = v;
                              setState(() {});
                            }),
                        16.widthBox,
                      ],
                    ),
                  ],
                ),
              ),
              4.heightBox,
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const UserScreen()));
                },
                child: Container(
                  height: 52,
                  width: context.width - 8,
                  decoration: BoxDecoration(color: const Color(0xff202329), borderRadius: BorderRadius.circular(12)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          16.widthBox,
                          Image.asset('assets/images/invite.png'),
                          4.widthBox,
                          Text(
                            'Invite people',
                            style: GoogleFonts.dmSans(
                              color: const Color(0xffFCFCFC),
                              fontSize: 14,
                            ),
                          ),
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
              4.heightBox,
              Container(
                height: 52,
                width: context.width - 8,
                decoration: BoxDecoration(color: const Color(0xff202329), borderRadius: BorderRadius.circular(12)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        16.widthBox,
                        Image.asset('assets/images/Time.png'),
                        4.widthBox,
                        Text(
                          'Time off',
                          style: GoogleFonts.dmSans(
                            color: const Color(0xffFCFCFC),
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: Image.asset('assets/images/Arrow.png'),
                    ),
                  ],
                ),
              ),
              4.heightBox,
              Container(
                height: 52,
                width: context.width - 8,
                decoration: BoxDecoration(color: const Color(0xff202329), borderRadius: BorderRadius.circular(12)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        16.widthBox,
                        Image.asset('assets/images/timeout.png'),
                        4.widthBox,
                        Text(
                          'Log out',
                          style: GoogleFonts.dmSans(
                            color: const Color(0xffFCFCFC),
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: Image.asset('assets/images/Arrow.png'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const NavBarWidget(selectedIndex: 2),
    );
  }
}
