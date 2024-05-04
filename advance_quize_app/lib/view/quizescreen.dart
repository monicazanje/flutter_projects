import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizeScreen extends StatefulWidget {
  const QuizeScreen({super.key});
  @override
  State createState() => _QuizeScreenState();
}

class _QuizeScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(5),
        decoration:
            const BoxDecoration(color: Color.fromRGBO(250, 245, 241, 1)),
        child: Center(
          child: Column(
            children: [
              // const Spacer(
              //   flex: 1,
              // ),
              Container(
                margin: const EdgeInsets.only(
                    left: 30, right: 30, top: 50, bottom: 25),
                child: Text(
                  "Math Quiz",
                  style: GoogleFonts.dmSans(
                      fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ),

              Container(
                margin: const EdgeInsets.only(left: 30, right: 30),
                height: 5,
                decoration:
                    const BoxDecoration(color: Color.fromRGBO(42, 135, 63, 1)),
              ),
              Container(
                margin: const EdgeInsets.only(left: 30),
                alignment: Alignment.bottomLeft,
                child: const Text(
                  "12/20",
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                    top: 15, left: 30, right: 30, bottom: 15),
                child: Text(
                  "If David’s age is 27 years old in 2011. What was his age in 2003?",
                  style: GoogleFonts.dmSans(
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                    color: const Color.fromRGBO(131, 76, 52, 1),
                  ),
                ),
              ),
              Container(
                height: 70,
                margin: const EdgeInsets.only(right: 30, left: 30, bottom: 10),
                padding: const EdgeInsets.only(
                    left: 30, right: 30, top: 10, bottom: 10),
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(26, 181, 134, 1),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                alignment: Alignment.center,
                child: Row(
                  children: [
                    Text(
                      "19 Years",
                      style: GoogleFonts.dmSans(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: const Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    const Icon(
                      Icons.check,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ],
                ),
              ),
              Container(
                height: 70,
                margin: const EdgeInsets.only(right: 30, left: 30, bottom: 10),
                padding: const EdgeInsets.only(
                    left: 30, right: 30, top: 10, bottom: 10),
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(248, 145, 87, 1),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                alignment: Alignment.center,
                child: Row(
                  children: [
                    Text(
                      "37 Years",
                      style: GoogleFonts.dmSans(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: const Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ],
                ),
              ),
              Container(
                height: 70,
                margin: const EdgeInsets.only(right: 30, left: 30, bottom: 10),
                padding: const EdgeInsets.only(
                    left: 30, right: 30, top: 10, bottom: 10),
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(248, 145, 87, 1),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                alignment: Alignment.center,
                child: Row(
                  children: [
                    Text(
                      "20 Years",
                      style: GoogleFonts.dmSans(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: const Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ],
                ),
              ),
              Container(
                height: 70,
                margin: const EdgeInsets.only(right: 30, left: 30),
                padding: const EdgeInsets.only(
                    left: 30, right: 30, top: 10, bottom: 10),
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(248, 145, 87, 1),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                alignment: Alignment.center,
                child: Row(
                  children: [
                    Text(
                      "17 Years",
                      style: GoogleFonts.dmSans(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: const Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 30, right: 30, top: 25),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Explanation",
                  style: GoogleFonts.dmSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: const Color.fromRGBO(131, 76, 52, 1),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                    left: 30, right: 30, top: 5, bottom: 10),
                child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing ",
                  style: GoogleFonts.dmSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(131, 76, 52, 1),
                  ),
                ),
              ),
              const Spacer(
                flex: 1,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        height: 30,
        width: 100,
        decoration: const BoxDecoration(
            color: Color.fromRGBO(26, 181, 134, 1),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: FittedBox(
          child: Row(
            children: [
              Text(
                "NEXT",
                style: GoogleFonts.dmSans(
                  //fontSize: 5,
                  fontWeight: FontWeight.w700,
                  color: const Color.fromRGBO(255, 255, 255, 1),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Icon(
                Icons.arrow_circle_right,
                //size: 7,
                color: Color.fromRGBO(255, 255, 255, 1),
              )
            ],
          ),
        ),
      ),
    );
  }
}
