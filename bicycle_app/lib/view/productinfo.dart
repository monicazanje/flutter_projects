
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});
  @override
  State createState() => _InfoPageState();
}

class _InfoPageState extends State {
  bool description = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.hardEdge,
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
            child: RotatedBox(
              quarterTurns: 1,
              child: Text(
                "EXTREME",
                textAlign: TextAlign.center,
                style: GoogleFonts.allertaStencil(
                  fontSize: 150,
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(255, 255, 255, 0.2),
                ),
              ),
            ),
          ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(
                    left: 20, right: 20, top: 50, bottom: 25),
                child: Row(
                  children: [
                    Container(
                      width: 200,
                      height: 85,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "GT BIKE",
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
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
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
                        child: const Icon(
                          Icons.arrow_back_ios_new,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                child: Image.asset("assets/pngwing (3).png"),
              ),
              Container(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Column(
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              description = true;
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                                color: Color.fromRGBO(34, 44, 59, 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            height: 35,
                            width: 106,
                            child: Text(
                              "Description",
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const Spacer(
                          flex: 1,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              description = false;
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                                color: Color.fromRGBO(72, 92, 236, 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            height: 35,
                            width: 106,
                            child: Text(
                              "Specification",
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Container(child: data()))
                  ],
                ),
              ),
              const Spacer(
                flex: 1,
              ),
              Container(
                padding: const EdgeInsets.only(
                    top: 15, left: 20, right: 20, bottom: 15),
                decoration:
                    const BoxDecoration(color: Color.fromRGBO(36, 44, 59, 1)),
                width: double.infinity,
                child: Row(
                  children: [
                    Text(
                      "2,599.99",
                      style: GoogleFonts.poppins(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(72, 92, 236, 1),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          gradient: LinearGradient(
                            transform: GradientRotation(20),
                            stops: [0.0, 1.0],
                            colors: [
                              Color.fromARGB(255, 76, 167, 247),
                              Color.fromRGBO(75, 76, 237, 1),
                            ],
                          ),
                        ),
                        height: 50,
                        width: 187,
                        child: Text(
                          "Buy Now",
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget data() {
    if (description == true) {
      return Text(
        "Lorem ipsum dolor sit amet. Ab tenetur molestias vel rerum cupiditate qui dolores consequatur et asperiores sunt ea magnam dolorem qui consectetur omnis. Ut error voluptas qui tempora provident aut necessitatibus voluptas rem eveniet nulla ut accusantium dignissimos aut facilis perspiciatis a natus quia.",
        style: GoogleFonts.poppins(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: const Color.fromRGBO(255, 255, 255, 1),
        ),
      );
    } else {
      return Text(
        "Specification data",
        textAlign: TextAlign.start,
        style: GoogleFonts.poppins(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: const Color.fromRGBO(255, 255, 255, 1),
        ),
      );
    }
  }
}
