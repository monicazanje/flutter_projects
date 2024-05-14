import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State createState() => _HomeState();
}

class _HomeState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Spacer(
            flex: 1,
          ),
          Container(
            margin: const EdgeInsets.all(24),
            child: Row(
              children: [
                SizedBox(
                  height: 65,
                  width: 180,
                  child: Text(
                    "Find your favorite plants",
                    style: GoogleFonts.poppins(
                        fontSize: 24, fontWeight: FontWeight.w400),
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                Container(
                  margin: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.all(5),
                        //padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(style: BorderStyle.solid),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),
                          boxShadow: const [
                            BoxShadow(
                              offset: Offset(0, 2),
                              blurRadius: 5,
                              spreadRadius: 3,
                              color: Color.fromARGB(255, 201, 199, 199),
                            ),
                          ],
                        ),
                        child: Image.asset(
                          "assets/shopping-bag.png",
                          width: 20,
                          height: 20,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          // const SizedBox(
          //   height: 30,
          // ),
          Container(
            margin: const EdgeInsets.all(25),
            decoration: const BoxDecoration(
              color: Color.fromRGBO(204, 231, 185, 1),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Row(
              children: [
                const Spacer(
                  flex: 1,
                ),
                Column(
                  children: [
                    Text(
                      "30% OFF",
                      style: GoogleFonts.poppins(
                          fontSize: 24, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "02-23 April",
                      style: GoogleFonts.poppins(
                          fontSize: 24, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                const Spacer(
                  flex: 1,
                ),
                SizedBox(
                  height: 100,
                  width: 120,
                  child: Image.asset("assets/Group 5318.png"),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
