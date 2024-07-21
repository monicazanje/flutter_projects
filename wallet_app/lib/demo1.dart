//  Expanded(
//             // height: 700,
//             child: SizedBox(
//               child: ListView.builder(
//                 padding: EdgeInsets.only(bottom: 30),
//                 itemCount: 4,
//                 itemBuilder: (context, index) {
//                   return GestureDetector(
//                       onTap: () {
//                         // Navigator.push(context, MaterialPageRoute(
//                         //   builder: (context) {
//                         //     return const CardPayScreen();
//                         //   },
//                         // ));
//                       },
//                       child: Stack(
//                         children: [
//                           Container(
//                             height: 210,
//                             width: double.infinity,
//                             padding: EdgeInsets.all(16),
//                             decoration: BoxDecoration(
//                                 color: Color.fromRGBO(39, 6, 133, 1),
//                                 borderRadius: BorderRadius.circular(16),
//                                 boxShadow: const [
//                                   BoxShadow(
//                                       blurRadius: 24,
//                                       offset: Offset(0, 16),
//                                       color: Color.fromRGBO(0, 0, 0, 0.2))
//                                 ]),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     Text(
//                                       "Monica Zanje",
//                                       style: GoogleFonts.sora(
//                                         fontWeight: FontWeight.w600,
//                                         fontSize: 12,
//                                         color: const Color.fromRGBO(
//                                             255, 255, 255, 1),
//                                       ),
//                                     ),
//                                     Text(
//                                       "****8923",
//                                       style: GoogleFonts.sora(
//                                         fontWeight: FontWeight.w600,
//                                         fontSize: 12,
//                                         color: const Color.fromRGBO(
//                                             255, 255, 255, 1),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                                 Spacer(),
//                                 Text(
//                                   "Balance",
//                                   style: GoogleFonts.sora(
//                                     fontWeight: FontWeight.w400,
//                                     fontSize: 12,
//                                     color:
//                                         const Color.fromRGBO(230, 221, 255, 1),
//                                   ),
//                                 ),
//                                 Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     Text(
//                                       "\$2,354",
//                                       style: GoogleFonts.sora(
//                                         fontWeight: FontWeight.w600,
//                                         fontSize: 21,
//                                         color: const Color.fromRGBO(
//                                             255, 255, 255, 1),
//                                       ),
//                                     ),
//                                     const Icon(
//                                       Icons.wifi,
//                                       color: Colors.white,
//                                     )
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ),
//                           // Positioned(
//                           //   top: 0,
//                           //   left: 0,
//                           //   child: Image(
//                           //       image:
//                           //           AssetImage("assets/card/Ellipse1 card.png"),
//                           //       height: 162,
//                           //       width: 162,
//                           //       fit: BoxFit.fill),
//                           // ),
//                           // Positioned(
//                           //   bottom: 0,
//                           //   right: 0,
//                           //   child: Image(
//                           //     image:
//                           //         AssetImage("assets/card/Ellipse2 card.png"),
//                           //     height: 150,
//                           //     width: 150,
//                           //     fit: BoxFit.fill,
//                           //   ),
//                           // ),
//                           Positioned(
//                               bottom: 0,
//                               right: 0,
//                               child: Container(
//                                 height: 125,
//                                 width: 250,
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.only(
//                                       topLeft: Radius.circular(125),
//                                       topRight: Radius.circular(125)),
//                                   color: Color.fromRGBO(111, 69, 233, 0.2),
//                                 ),
//                               )),
//                         ],
//                       ));
//                 },
//               ),
//             ),
//           ),