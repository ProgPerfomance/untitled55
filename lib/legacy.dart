//    16.heightBox,
// Container(
//   width: context.width,
//   height: 72,
//   decoration: BoxDecoration(
//     borderRadius: BorderRadius.circular(12),
//     color: const Color(0xff202329),
//   ),
//   child: Padding(
//     padding: const EdgeInsets.all(16.0),
//     child: Column(
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Text(
//               'Trips progress',
//               style: GoogleFonts.dmSans(
//                 fontSize: 14,
//                 color: const Color(0xffD0D0D0),
//               ),
//             ),
//             Row(
//               children: [
//                 Text(
//                   '33%',
//                   style: GoogleFonts.dmSans(
//                     fontSize: 14,
//                     color: const Color(0xffD0D0D0),
//                   ),
//                 ),
//                 2.widthBox,
//                 Image.asset('assets/images/Amount.png'),
//                 2.widthBox,
//                 Text(
//                   '100%',
//                   style: GoogleFonts.dmSans(
//                       fontSize: 12,
//                       color: const Color(0xffFCFCFC)
//                           .withOpacity(0.46)),
//                 ),
//               ],
//             )
//           ],
//         ),
//         10.heightBox,
//         Stack(
//           children: [
//             Container(
//               height: 12,
//               width: context.width - 132,
//               decoration: BoxDecoration(
//                 color: const Color(0xff2551EB),
//                 borderRadius: BorderRadius.circular(30),
//               ),
//             ),
//             Container(
//               height: 12,
//               width: context.width - 32,
//               decoration: BoxDecoration(
//                 color: const Color(0xffFCFCFC).withOpacity(0.08),
//                 borderRadius: BorderRadius.circular(30),
//               ),
//             ),
//           ],
//         ),
//       ],
//     ),
//   ),
// ),


// Padding(
//   padding:
//       const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
//   child: Row(
//     children: [
//       Text(
//         'Overview',
//         style: GoogleFonts.dmSans(
//             fontSize: 14, color: const Color(0xffD0D0D0)),
//       ),
//       16.widthBox,
//       Text(
//         'Productivity',
//         style: GoogleFonts.dmSans(
//             fontSize: 14,
//             color: const Color(0xffD0D0D0).withOpacity(0.46)),
//       )
//     ],
//   ),
// ),

// InkWell(
//   onTap: () {
//     Navigator.push(context, MaterialPageRoute(builder: (context) => const RatingScreen()));
//   },
//   child: Container(
//     width: 111,
//     height: 72,
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(12),
//       color: const Color(0xff202329),
//     ),
//     child: Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: Row(
//         children: [
//           Image.asset('assets/images/rating.png'),
//           4.widthBox,
//           Column(
//             children: [
//               Text(
//                 'Rating',
//                 style: GoogleFonts.dmSans(
//                   fontSize: 12,
//                   color:
//                       const Color(0xffFCFCFC).withOpacity(0.46),
//                 ),
//               ),
//               Text(
//                 '9.23',
//                 style: GoogleFonts.dmSans(
//                   fontSize: 16,
//                   color: const Color(0xffD0D0D0),
//                 ),
//               ),
//             ],
//           )
//         ],
//       ),
//     ),
//   ),
// )