import 'package:flutter/material.dart';
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
            children: [
              Container(
                margin: const EdgeInsets.only(
                    left: 20, right: 20, top: 50, bottom: 25),
                child: Row(
                  children: [
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
                      child: Image.asset("assets/search-normal.png",
                          fit: BoxFit.contain),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(5),
                      child: Image.asset("assets/pngwing (4).png"),
                    ),
                    Column(
                      children: [
                        Text(
                          "EXTREME ",
                          textAlign: TextAlign.start,
                          style: GoogleFonts.allertaStencil(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "30% OFF ",
                          textAlign: TextAlign.start,
                          style: GoogleFonts.poppins(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
