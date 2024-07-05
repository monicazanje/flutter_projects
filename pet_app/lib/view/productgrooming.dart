import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GroomingScreen extends StatefulWidget {
  const GroomingScreen({super.key});
  @override
  State createState() => _GroomingScreenState();
}

class _GroomingScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 55),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      height: 24,
                      width: 24,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(245, 146, 69, 1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      child: const Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                        size: 16,
                      ),
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Text(
                    "Grooming",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(31, 32, 41, 1),
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Container(
              decoration: const BoxDecoration(
                color: Color.fromRGBO(245, 146, 69, 1),
                borderRadius: BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 16,
                    spreadRadius: 5,
                    offset: Offset(0, 8),
                    color: Color.fromRGBO(22, 34, 51, 0.08),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                      left: 16,
                      right: 8,
                    ),
                    child: Container(
                        //height: 60,
                        width: 200,
                        padding: const EdgeInsets.only(right: 8),
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "60% OFF ",
                              style: GoogleFonts.poppins(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                            Text(
                              "On hair & spa treatment ",
                              style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                          ],
                        )),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                        left: 16, right: 16, top: 16, bottom: 16),
                    child:
                        Image.asset('assets/image (13).png', fit: BoxFit.cover),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.only(
                  left: 16, top: 11, bottom: 11, right: 16),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromRGBO(245, 146, 69, 1),
                    style: BorderStyle.solid,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              child: Row(
                children: [
                  SizedBox(
                    child: Text(
                      "search",
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromARGB(255, 144, 145, 150),
                      ),
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  const Icon(
                    Icons.search,
                    size: 24,
                    color: Color.fromRGBO(245, 146, 69, 1),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Text(
                    "Our Services",
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "See All",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromARGB(255, 125, 125, 131),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Expanded(
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.only(
                            top: 16, left: 16, right: 16, bottom: 15),
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 16,
                              spreadRadius: 5,
                              offset: Offset(0, 8),
                              color: Color.fromRGBO(22, 34, 51, 0.08),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/image (17).png',
                              fit: BoxFit.cover,
                              scale: 1,
                            ),
                            const Spacer(
                              flex: 1,
                            ),
                            Text(
                              "Bathing & Drying",
                              style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
