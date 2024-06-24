import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State createState() => _HomePageState();
}

class _HomePageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                transform: GradientRotation(20),
                stops: [0.5, 0.5],
                colors: [
                  Color.fromRGBO(34, 40, 52, 1),
                  Color.fromRGBO(75, 76, 237, 1),
                ],
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(
                    left: 20, right: 20, top: 50, bottom: 25),
                child: Row(
                  children: [
                    // ignore: sized_box_for_whitespace
                    Container(
                      width: 200,
                      height: 85,
                      child: Text(
                        "Choose Your Bicycle ",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.poppins(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Color.fromARGB(255, 76, 167, 247),
                          Color.fromRGBO(75, 76, 237, 1),
                        ], stops: [
                          0.0,
                          1.0
                        ], transform: GradientRotation(70)),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        color: Color.fromRGBO(75, 76, 237, 1),
                      ),
                      child: Image.asset(
                        "assets/search-normal.png",
                        height: 30,
                        width: 30,
                        scale: 1,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                    color: Colors.grey.withOpacity(0.1),
                    boxShadow: [
                      BoxShadow(
                          spreadRadius: 2,
                          color: Colors.black.withOpacity(0.1),
                          offset: const Offset(10, 10),
                          blurRadius: 5)
                    ]),
                margin: const EdgeInsets.all(20),
                height: 200,
                width: double.infinity,
                child: Stack(
                  children: [
                    Positioned(
                      child: Image.asset("assets/pngwing (4).png"),
                    ),
                    Positioned(
                      top: 10,
                      right: 10,
                      child: Text(
                        "EXTREME ",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.allertaStencil(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      right: 10,
                      child: Text(
                        "30% OFF ",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.allertaStencil(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                    left: 20, top: 10, bottom: 10, right: 20),
                height: 50,
                width: 280,
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Color.fromARGB(255, 76, 167, 247),
                          Color.fromRGBO(75, 76, 237, 1),
                        ], stops: [
                          0.0,
                          1.0
                        ], transform: GradientRotation(70)),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        color: Color.fromRGBO(75, 76, 237, 1),
                      ),
                      child: Image.asset(
                        "assets/image 2.png",
                        height: 30,
                        width: 30,
                        scale: 1,
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Color.fromRGBO(255, 255, 255, 1),
                          Color.fromRGBO(161, 161, 161, 1),
                        ], stops: [
                          0.4,
                          1.0
                        ], transform: GradientRotation(70)),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        color: Color.fromRGBO(75, 76, 237, 1),
                      ),
                      child: Image.asset(
                        "assets/image 1 (1).png",
                        height: 30,
                        width: 30,
                        scale: 1,
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Color.fromRGBO(255, 255, 255, 1),
                          Color.fromRGBO(161, 161, 161, 1),
                        ], stops: [
                          0.4,
                          1.0
                        ], transform: GradientRotation(70)),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        color: Color.fromRGBO(75, 76, 237, 1),
                      ),
                      child: Image.asset(
                        "assets/image 3 (1).png",
                        height: 30,
                        width: 30,
                        scale: 1,
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Color.fromRGBO(255, 255, 255, 1),
                          Color.fromRGBO(161, 161, 161, 1),
                        ], stops: [
                          0.4,
                          1.0
                        ], transform: GradientRotation(70)),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        color: Color.fromRGBO(75, 76, 237, 1),
                      ),
                      child: Image.asset(
                        "assets/image 4.png",
                        height: 30,
                        width: 30,
                        scale: 1,
                      ),
                    ),
                  ],
                ),
              ),
              // Expanded(
              //   child: GridView.builder(
              //     scrollDirection: Axis.vertical,
              //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              //       crossAxisCount: 2,
              //     ),
              //     itemCount: 6,
              //     itemBuilder: (context, index) {
              //       return GestureDetector(
              //         onTap: () {},
              //         child: Container(
              //           height: 400,
              //           margin: const EdgeInsets.only(
              //               left: 10, right: 30, top: 10, bottom: 20),
              //           decoration: BoxDecoration(
              //               borderRadius: const BorderRadius.all(
              //                 Radius.circular(20),
              //               ),
              //               color: Colors.grey.withOpacity(0.1),
              //               boxShadow: [
              //                 BoxShadow(
              //                     spreadRadius: 2,
              //                     color: Colors.black.withOpacity(0.5),
              //                     offset: const Offset(10, 10),
              //                     blurRadius: 3)
              //               ]),
              //           child: Container(
              //             padding: const EdgeInsets.only(left: 10),
              //             decoration: BoxDecoration(
              //                 border: Border.all(
              //                     color: Colors.white,
              //                     style: BorderStyle.solid)),
              //             child: Column(
              //               crossAxisAlignment: CrossAxisAlignment.start,
              //               children: [
              //                 Container(
              //                   padding: const EdgeInsets.only(
              //                       left: 20, right: 20, top: 20),
              //                   child: Image.asset(
              //                     "assets/pngwing (1).png",
              //                     scale: 1,
              //                   ),
              //                 ),
              //                 Text(
              //                   "Road Bike",
              //                   textAlign: TextAlign.start,
              //                   style: GoogleFonts.poppins(
              //                     fontSize: 15,
              //                     fontWeight: FontWeight.w500,
              //                     color: Colors.white,
              //                   ),
              //                 ),
              //                 Text(
              //                   "Kiross",
              //                   textAlign: TextAlign.start,
              //                   style: GoogleFonts.poppins(
              //                     fontSize: 20,
              //                     fontWeight: FontWeight.w500,
              //                     color: Colors.white,
              //                   ),
              //                 ),
              //                 Text(
              //                   "1,599.99",
              //                   textAlign: TextAlign.start,
              //                   style: GoogleFonts.poppins(
              //                     fontSize: 15,
              //                     fontWeight: FontWeight.w500,
              //                     color: Colors.white,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //           ),
              //         ),
              //       );
              //     },
              //   ),
              // ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    // mainAxisSpacing: 30,
                    // crossAxisSpacing: 30,
                  ),
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onLongPress: () {},
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                            color: Colors.grey.withOpacity(0.1),
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 2,
                                  color: Colors.black.withOpacity(0.5),
                                  offset: const Offset(10, 10),
                                  blurRadius: 3)
                            ]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 130,
                              width: 100,
                              child: Image.asset(
                                'assets/pngwing (1).png',
                                fit: BoxFit.fill,
                              ),
                            ),
                            Text(
                              "Road Bike",
                              textAlign: TextAlign.start,
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Kiross",
                              textAlign: TextAlign.start,
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "1,599.99",
                              textAlign: TextAlign.start,
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
