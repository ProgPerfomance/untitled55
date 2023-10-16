import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled55/components/app_bar_widget.dart';
import 'package:untitled55/view/global_widgets/navbarWidget.dart';
import 'package:untitled55/view/my_trips/trip.controller.dart';
import 'package:untitled55/view/my_trips/widgets/tripline.item.widget.dart';

class NewTripScreen extends GetView<MyTripController> {
  const NewTripScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(MyTripController());
    return Padding(
      padding: const EdgeInsets.only(right: 4.0, left: 4.0, bottom: 4.0),
      child: Scaffold(
        backgroundColor: const Color(0xff121418),
        appBar: const AppBarWidget(),
        body: SizedBox.expand(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              3.heightBox,
              Container(
                height: 150,
                width: Get.width - 8,
                decoration: BoxDecoration(
                  color: const Color(0xff202329),
                  borderRadius: BorderRadius.circular(17),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const CircleAvatar(
                                backgroundImage: AssetImage('assets/images/testprof.png'),
                              ),
                              8.widthBox,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Good Morning',
                                    style: GoogleFonts.dmSans(
                                      fontSize: 14,
                                      color: const Color(0xffFCFCFC).withOpacity(0.46),
                                    ),
                                  ),
                                  Text(
                                    'Abdula Azis',
                                    style: GoogleFonts.dmSans(fontSize: 18, color: const Color(0xffD0D0D0)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  border: Border.all(color: const Color(0xffFCFCFC).withOpacity(0.08)),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Center(
                                  child: Image.asset('assets/images/Arrow.png'),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 1,
                      width: Get.width - 45,
                      color: const Color(0xffFCFCFC).withOpacity(0.08),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Truck:',
                                style: GoogleFonts.dmSans(fontSize: 12, color: const Color(0xffFCFCFC).withOpacity(0.46)),
                              ),
                              Text(
                                '5263',
                                style: GoogleFonts.dmSans(fontSize: 16, color: const Color(0xffD0D0D0)),
                              ),
                            ],
                          ),
                          18.widthBox,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Trailer:',
                                style: GoogleFonts.dmSans(fontSize: 12, color: const Color(0xffFCFCFC).withOpacity(0.46)),
                              ),
                              Text(
                                '5263',
                                style: GoogleFonts.dmSans(fontSize: 16, color: const Color(0xffD0D0D0)),
                              ),
                            ],
                          ),
                          18.widthBox,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Vehicle:',
                                style: GoogleFonts.dmSans(fontSize: 12, color: const Color(0xffFCFCFC).withOpacity(0.46)),
                              ),
                              Text(
                                'Volvo FMX..',
                                style: GoogleFonts.dmSans(fontSize: 16, color: const Color(0xffD0D0D0)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              15.heightBox,
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () => controller.onChangeTripPage(0),
                      child: Obx(() => Text(
                            'Available Trips · ${controller.avaliable.length}',
                            style: GoogleFonts.dmSans(
                                fontSize: 14,
                                color: controller.currentTripPage.value == 0 ? const Color(0xffD0D0D0) : const Color(0xffFCFCFC).withOpacity(0.46)),
                          )),
                    ),
                    15.widthBox,
                    GestureDetector(
                      onTap: () => controller.onChangeTripPage(1),
                      child: Obx(() => Text(
                            'Current Trips · ${controller.active.length}',
                            style: GoogleFonts.dmSans(
                                fontSize: 14,
                                color: controller.currentTripPage.value == 1 ? const Color(0xffD0D0D0) : const Color(0xffFCFCFC).withOpacity(0.46)),
                          )),
                    ),
                    15.widthBox,
                    GestureDetector(
                      onTap: () => controller.onChangeTripPage(2),
                      child: Obx(() => Text(
                            'Closen Trips · ${controller.closed.length}',
                            style: GoogleFonts.dmSans(
                                fontSize: 14,
                                color: controller.currentTripPage.value == 2 ? const Color(0xffD0D0D0) : const Color(0xffFCFCFC).withOpacity(0.46)),
                          )),
                    ),
                  ],
                ),
              ),
              10.heightBox,
              Expanded(
                child: PageView(
                  controller: controller.tripsPage,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        children: List.generate(
                            controller.avaliable.length,
                            (index) => TripLineItemWidget(
                                  data: controller.avaliable[index],
                                )),
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: List.generate(
                            controller.active.length,
                            (index) => TripLineItemWidget(
                                  data: controller.active[index],
                                )),
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: List.generate(
                            controller.closed.length,
                            (index) => TripLineItemWidget(
                                  data: controller.closed[index],
                                )),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: const NavBarWidget(selectedIndex: 1),
      ),
    );
  }
}
