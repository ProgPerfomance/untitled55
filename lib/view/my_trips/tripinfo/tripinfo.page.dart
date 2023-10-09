import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:untitled55/view/my_trips/tripinfo/tripinfo.controller.dart';
import 'package:syncfusion_flutter_core/theme.dart';

class TripInfoPage extends GetView<TripInfoController> {
  const TripInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(TripInfoController());
    return Scaffold(
      backgroundColor: const Color(0xFF121418),
      body: SizedBox.expand(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 70,
              clipBehavior: Clip.hardEdge,
              decoration: const BoxDecoration(
                color: Color(0xff202329),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12), bottomRight: Radius.circular(12)),
              ),
            ),
            const SizedBox(height: 3),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: const BoxDecoration(
                    color: Color(0xff202329),
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12), bottomRight: Radius.circular(12)),
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Information About Trip',
                        style: GoogleFonts.dmSans(color: const Color(0xFFD0D0D0), fontSize: 14, fontWeight: FontWeight.w400),
                        textAlign: TextAlign.start,
                      ),
                      const SizedBox(height: 16),
                      GestureDetector(
                        onTap: controller.onAddPhotoTap,
                        child: Container(
                          height: 52,
                          padding: const EdgeInsets.all(16),
                          decoration: ShapeDecoration(
                            color: const Color(0x14FCFCFC),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                            shadows: const [BoxShadow(color: Color(0x26000000), blurRadius: 7, offset: Offset(1, 1), spreadRadius: 0)],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.image_outlined, color: const Color(0xFFFCFCFC).withOpacity(.46)),
                                  const SizedBox(width: 6),
                                  Text(
                                    'Add Photo',
                                    style: GoogleFonts.dmSans(color: const Color(0xFFFCFCFC), fontSize: 14, fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              Icon(Icons.arrow_forward_ios, color: const Color(0xFFFCFCFC).withOpacity(.75)),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: TextField(
                          style: GoogleFonts.dmSans(color: const Color(0xFFFCFCFC), fontSize: 12, fontWeight: FontWeight.w500),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(width: 1, color: Color(0x75FCFCFC)),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(width: 1, color: Color(0x75FCFCFC)),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(width: 1, color: Color(0x75FCFCFC)),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            label:
                                Text("Cases", style: GoogleFonts.dmSans(color: const Color(0x75FCFCFC), fontSize: 12, fontWeight: FontWeight.w500)),
                            hintStyle: GoogleFonts.dmSans(color: const Color(0xFFD0D0D0), fontSize: 14, fontWeight: FontWeight.w400),
                            hintText: "Number",
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: TextField(
                          style: GoogleFonts.dmSans(color: const Color(0xFFFCFCFC), fontSize: 12, fontWeight: FontWeight.w500),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(width: 1, color: Color(0x75FCFCFC)),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(width: 1, color: Color(0x75FCFCFC)),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(width: 1, color: Color(0x75FCFCFC)),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            label:
                                Text("Pallets", style: GoogleFonts.dmSans(color: const Color(0x75FCFCFC), fontSize: 12, fontWeight: FontWeight.w500)),
                            hintStyle: GoogleFonts.dmSans(color: const Color(0xFFD0D0D0), fontSize: 14, fontWeight: FontWeight.w400),
                            hintText: "Number",
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: TextField(
                          style: GoogleFonts.dmSans(color: const Color(0xFFFCFCFC), fontSize: 12, fontWeight: FontWeight.w500),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(width: 1, color: Color(0x75FCFCFC)),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(width: 1, color: Color(0x75FCFCFC)),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(width: 1, color: Color(0x75FCFCFC)),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            label: Text("Seal number",
                                style: GoogleFonts.dmSans(color: const Color(0x75FCFCFC), fontSize: 12, fontWeight: FontWeight.w500)),
                            hintStyle: GoogleFonts.dmSans(color: const Color(0xFFD0D0D0), fontSize: 14, fontWeight: FontWeight.w400),
                            hintText: "Text",
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: TextField(
                          style: GoogleFonts.dmSans(color: const Color(0xFFFCFCFC), fontSize: 12, fontWeight: FontWeight.w500),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(width: 1, color: Color(0x75FCFCFC)),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(width: 1, color: Color(0x75FCFCFC)),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(width: 1, color: Color(0x75FCFCFC)),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            suffixIcon: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "°F",
                                  style: GoogleFonts.dmSans(color: const Color(0xFFD0D0D0), fontSize: 14, fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            label: Text("BOL temperature",
                                style: GoogleFonts.dmSans(color: const Color(0x75FCFCFC), fontSize: 12, fontWeight: FontWeight.w500)),
                            hintStyle: GoogleFonts.dmSans(color: const Color(0xFFD0D0D0), fontSize: 14, fontWeight: FontWeight.w400),
                            hintText: "37",
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Obx(
                            () => Checkbox(
                              value: controller.cycleContSelector.value,
                              onChanged: controller.onCycleSelect,
                              fillColor: MaterialStatePropertyAll(
                                controller.cycleContSelector.value ? const Color(0xFF2551EB) : const Color(0xFFFCFCFC).withOpacity(0.14),
                              ),
                              checkColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32),
                              ),
                            ),
                          ),
                          Text(
                            'Сycle',
                            style: GoogleFonts.dmSans(color: const Color(0xFFD0D0D0), fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                          Obx(
                            () => Checkbox(
                              value: !controller.cycleContSelector.value,
                              onChanged: controller.onContSelect,
                              fillColor: MaterialStatePropertyAll(
                                  controller.cycleContSelector.value ? const Color(0xFFFCFCFC).withOpacity(0.14) : const Color(0xFF2551EB)),
                              checkColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32),
                              ),
                            ),
                          ),
                          Text(
                            'Cont',
                            style: GoogleFonts.dmSans(color: const Color(0xFFD0D0D0), fontSize: 14, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: TextField(
                          controller: controller.temperatureText,
                          style: GoogleFonts.dmSans(color: const Color(0xFFFCFCFC), fontSize: 12, fontWeight: FontWeight.w500),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(width: 1, color: Color(0x75FCFCFC)),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(width: 1, color: Color(0x75FCFCFC)),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(width: 1, color: Color(0x75FCFCFC)),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            suffixIcon: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "°F",
                                  style: GoogleFonts.dmSans(color: const Color(0xFFD0D0D0), fontSize: 14, fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            label: Text("Set temperature",
                                style: GoogleFonts.dmSans(color: const Color(0x75FCFCFC), fontSize: 12, fontWeight: FontWeight.w500)),
                            hintStyle: GoogleFonts.dmSans(color: const Color(0xFFD0D0D0), fontSize: 14, fontWeight: FontWeight.w400),
                            hintText: "25",
                          ),
                        ),
                      ),
                      SfSliderTheme(
                        data: SfSliderThemeData(
                          activeLabelStyle: GoogleFonts.dmSans(color: const Color(0xFFD0D0D0), fontSize: 12, fontWeight: FontWeight.w400),
                          inactiveLabelStyle: GoogleFonts.dmSans(color: const Color(0xFFD0D0D0), fontSize: 12, fontWeight: FontWeight.w400),
                        ),
                        child: Obx(
                          () => SfSlider(
                            min: -20,
                            max: 100,
                            value: controller.temperature.value,
                            interval: 20,
                            stepSize: 1,
                            showTicks: true,
                            showLabels: true,
                            enableTooltip: true,
                            minorTicksPerInterval: 1,
                            onChanged: controller.onTemperatureChange,
                            labelFormatterCallback: (actualValue, formattedText) => "${actualValue.round()}°F",
                            tooltipTextFormatterCallback: (actualValue, formattedText) => "${actualValue.round()}°F",
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: TextField(
                          style: GoogleFonts.dmSans(color: const Color(0xFFFCFCFC), fontSize: 12, fontWeight: FontWeight.w500),
                          minLines: 2,
                          maxLines: 2,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(width: 1, color: Color(0x75FCFCFC)),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(width: 1, color: Color(0x75FCFCFC)),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(width: 1, color: Color(0x75FCFCFC)),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            label: Text("Note", style: GoogleFonts.dmSans(color: const Color(0x75FCFCFC), fontSize: 12, fontWeight: FontWeight.w500)),
                            hintStyle: GoogleFonts.dmSans(color: const Color(0xFFD0D0D0), fontSize: 14, fontWeight: FontWeight.w400),
                            hintText: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFFFCFCFC).withOpacity(0.08),
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(17), topRight: Radius.circular(17)),
              ),
              child: GestureDetector(
                onTap: controller.onConfirmTap,
                child: Container(
                  height: 44,
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  margin: const EdgeInsets.all(16),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment(1.00, -0.02),
                      end: Alignment(-1, 0.02),
                      colors: [Color(0xFF2550EB), Color(0xFF2897FF)],
                    ),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  ),
                  child: Text(
                    'Confirm',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.dmSans(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
