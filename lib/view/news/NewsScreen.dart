import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled55/view/global_widgets/AppbarAndNotifications.dart';
import 'package:untitled55/view/global_widgets/navbarWidget.dart';
import 'package:untitled55/view/news/OpenNewsScreen.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: Column(
            children: [
              const AppBarAndNotifications(),
              3.heightBox,
              Container(
                height: 56,
                width: context.width - 8,
                decoration: BoxDecoration(
                  color: const Color(0xff202329),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      16.widthBox,
                      Container(
                        height: 40,
                        width: 46,
                        decoration: BoxDecoration(
                          color: const Color(0xffFCFCFC).withOpacity(0.08),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Text(
                            'All',
                            style: GoogleFonts.dmSans(
                              color: const Color(0xffD0D0D0),
                            ),
                          ),
                        ),
                      ),
                      4.widthBox,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: Container(
                          height: 40,
                          width: 61,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color:
                                    const Color(0xffFCFCFC).withOpacity(0.08),
                              )),
                          child: Center(
                            child: Text(
                              'Tag 1',
                              style: GoogleFonts.dmSans(
                                color: const Color(0xffD0D0D0),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: Container(
                          height: 40,
                          width: 61,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xffFCFCFC).withOpacity(0.08),
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Text(
                              'Tag 2',
                              style: GoogleFonts.dmSans(
                                color: const Color(0xffD0D0D0),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: Container(
                          height: 40,
                          width: 61,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xffFCFCFC).withOpacity(0.08),
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Text(
                              'Tag 3',
                              style: GoogleFonts.dmSans(
                                color: const Color(0xffD0D0D0),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: Container(
                          height: 40,
                          width: 61,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xffFCFCFC).withOpacity(0.08),
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Text(
                              'Tag 4',
                              style: GoogleFonts.dmSans(
                                color: const Color(0xffD0D0D0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              3.heightBox,
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    card(),
                    card(),
                    card(),
                    card(),
                  ],
                ),
              ),
              3.heightBox,
              Container(
                width: context.width - 8,
                height: context.height,
                decoration: BoxDecoration(
                  color: const Color(0xff202329),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      10.heightBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'See more',
                            style: GoogleFonts.dmSans(
                              color: Color(0xffD0D0D0),
                            ),
                          ),
                          Text(
                            'Recomendation',
                            style: GoogleFonts.dmSans(
                              fontSize: 14,
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                      10.heightBox,
                      Container(
                        width: context.width - 32,
                        height: 84,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xffFCFCFC).withOpacity(0.08),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            children: [
                              Image.asset('assets/icons/newsmini.png'),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      10.widthBox,
                                      Text('20 Jun 2021', style: GoogleFonts.dmSans(
                                        fontSize: 10,
                                        color: Color(0xffFCFCFC).withOpacity(0.46)
                                      ),),
                                      130.widthBox,
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(4),
                                          color: const Color(0xffFCFCFC)
                                              .withOpacity(0.08),
                                        ),
                                        height: 20,
                                        width: 39,
                                        child: Center(
                                          child: Text(
                                            'Tag 1',
                                            style: GoogleFonts.dmSans(
                                              fontSize: 10,
                                              color: const Color(0xffD0D0D0),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  3.heightBox,
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Text('UX/UI desigrers be one ofthe best\njob in the world',
                                    style: GoogleFonts.dmSans(
                                      fontSize: 14,
                                      color: Color(0xffD0D0D0),
                                    ),),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      backgroundColor: const Color(0xff121418),
      bottomNavigationBar: const NavBarWidget(
        selectedIndex: 1,
      ),
    );
  }
}

class card extends StatelessWidget {
  const card({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2.0),
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => OpenNewsScreem()));
        },
        child: Container(
          height: 249,
          width: 217,
          decoration: BoxDecoration(
            color: const Color(0xff202329),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Image.asset('assets/icons/news.png'),
                ),
                12.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: const Color(0xffFCFCFC).withOpacity(0.08),
                      ),
                      height: 20,
                      width: 39,
                      child: Center(
                        child: Text(
                          'Tag 1',
                          style: GoogleFonts.dmSans(
                            fontSize: 10,
                            color: const Color(0xffD0D0D0),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      '20 Jun 2021',
                      style: GoogleFonts.dmSans(
                          fontSize: 10,
                          color: const Color(0xffFCFCFC).withOpacity(0.46)),
                    )
                  ],
                ),
                3.heightBox,
                Text(
                  'USOSA carnival ends amid funfare in Lagos',
                  style: GoogleFonts.dmSans(color: const Color(0xffD0D0D0)),
                ),
                7.heightBox,
                Text(
                  'SDjaposdjapodjapsodjapsodjaspdaspodakopjdpoasdjpoa',
                  style: GoogleFonts.dmSans(
                    color: const Color(0xffFCFCFC).withOpacity(0.46),
                    fontSize: 12,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
