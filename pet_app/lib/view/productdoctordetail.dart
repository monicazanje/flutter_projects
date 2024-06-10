import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorDetailScreen extends StatefulWidget {
  const DoctorDetailScreen({super.key});
  @override
  State createState() => _DoctorDetailScreenState();
}

class _DoctorDetailScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 146, 69, 1),
      body: Column(
        children: [
          const Spacer(
            flex: 1,
          ),
          Container(
            margin: const EdgeInsets.only(left: 16, top: 55, right: 16),
            child: Row(
              children: [
                Container(
                  height: 24,
                  width: 24,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: const Icon(
                    Icons.arrow_back_ios_new,
                    color: Color.fromRGBO(245, 146, 69, 1),
                    size: 16,
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                Text(
                  "Veterinary",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                const Spacer(
                  flex: 1,
                )
              ],
            ),
          ),
          // const SizedBox(
          //   height: 30,
          // ),
          const Spacer(
            flex: 1,
          ),
          SizedBox(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                      top: 6, bottom: 6, left: 24, right: 24),
                  child: Image.asset(
                    "assets/image (23).png",
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  padding: const EdgeInsets.all(24),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    color: Colors.white,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Dr. Anna Jhonason",
                          style: GoogleFonts.poppins(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "Veterinary Behavioral",
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 62,
                              width: 100,
                              padding: const EdgeInsets.only(
                                  top: 8, bottom: 8, left: 16, right: 16),
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
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Experience",
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    "11 years",
                                    style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color:
                                          const Color.fromRGBO(245, 146, 69, 1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(
                              flex: 1,
                            ),
                            Container(
                              height: 62,
                              width: 100,
                              padding: const EdgeInsets.only(
                                  top: 8, bottom: 8, left: 16, right: 16),
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
                                  Text(
                                    "Price",
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    "250",
                                    style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color:
                                          const Color.fromRGBO(245, 146, 69, 1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(
                              flex: 1,
                            ),
                            Container(
                              height: 62,
                              width: 100,
                              padding: const EdgeInsets.only(
                                  top: 8, bottom: 8, left: 16, right: 16),
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
                                  Text(
                                    "Location",
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    "2.5 Km",
                                    style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color:
                                          const Color.fromRGBO(245, 146, 69, 1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "About",
                            style: GoogleFonts.inter(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(0, 0, 0, 1),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Dr. Maria Naiis is a highly experienced veterinarian with 11 years of dedicated practice, showcasing a pro...",
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(0, 0, 0, 1),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Container(
                          margin: const EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Text(
                                "Available Days",
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(0, 0, 0, 1),
                                ),
                              ),
                              const Spacer(
                                flex: 1,
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.calendar_today_outlined,
                                    color: Color.fromRGBO(245, 146, 69, 1),
                                    size: 16,
                                  ),
                                  Text(
                                    "October, 2023",
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: const Color.fromRGBO(0, 0, 0, 1),
                                    ),
                                  ),
                                ],
                              ),
                              const Spacer(
                                flex: 1,
                              )
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(
                                  top: 8, bottom: 8, left: 16, right: 16),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    style: BorderStyle.solid,
                                    color:
                                        const Color.fromRGBO(245, 146, 69, 1),
                                  ),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Text(
                                "Fri, 6",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(0, 0, 0, 1),
                                ),
                              ),
                            ),
                            const Spacer(
                              flex: 1,
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  top: 8, bottom: 8, left: 16, right: 16),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    style: BorderStyle.solid,
                                    color:
                                        const Color.fromRGBO(245, 146, 69, 1),
                                  ),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Text(
                                "Sat, 7",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(0, 0, 0, 1),
                                ),
                              ),
                            ),
                            const Spacer(
                              flex: 1,
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  top: 8, bottom: 8, left: 16, right: 16),
                              decoration: BoxDecoration(
                                  color: const Color.fromRGBO(245, 146, 69, 1),
                                  border: Border.all(
                                    style: BorderStyle.solid,
                                    color:
                                        const Color.fromRGBO(245, 146, 69, 1),
                                  ),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Text(
                                "Sun, 8",
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                            ),
                            const Spacer(
                              flex: 1,
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  top: 8, bottom: 8, left: 16, right: 16),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    style: BorderStyle.solid,
                                    color:
                                        const Color.fromRGBO(245, 146, 69, 1),
                                  ),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Text(
                                "Mon, 9",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(0, 0, 0, 1),
                                ),
                              ),
                            ),
                            const Spacer(
                              flex: 1,
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  top: 8, bottom: 8, left: 16, right: 16),
                              decoration: BoxDecoration(
                                  color: const Color.fromRGBO(245, 146, 69, 1),
                                  border: Border.all(
                                    style: BorderStyle.solid,
                                    color:
                                        const Color.fromRGBO(245, 146, 69, 1),
                                  ),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Text(
                                "Fri, 6",
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Available Time",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(0, 0, 0, 1),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(
                                  top: 8, bottom: 8, left: 16, right: 16),
                              margin: const EdgeInsets.only(left: 5),
                              decoration: BoxDecoration(
                                  color: const Color.fromRGBO(245, 146, 69, 1),
                                  border: Border.all(
                                    style: BorderStyle.solid,
                                    color:
                                        const Color.fromRGBO(245, 146, 69, 1),
                                  ),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Text(
                                "9.00",
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  top: 8, bottom: 8, left: 16, right: 16),
                              margin: const EdgeInsets.only(left: 5),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    style: BorderStyle.solid,
                                    color:
                                        const Color.fromRGBO(245, 146, 69, 1),
                                  ),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Text(
                                "15.00",
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  top: 8, bottom: 8, left: 16, right: 16),
                              margin: const EdgeInsets.only(left: 5),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    style: BorderStyle.solid,
                                    color:
                                        const Color.fromRGBO(245, 146, 69, 1),
                                  ),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Text(
                                "19.00",
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 35,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(252, 219, 193, 1),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset("assets/fi_map.png"),
                                Text(
                                  " See Location",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: const Color.fromRGBO(0, 0, 0, 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => const DashBoardScreen(),
                            //   ),
                            // );
                          },
                          child: Container(
                              height: 35,
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(245, 146, 69, 1),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  "Book Now",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color:
                                        const Color.fromRGBO(255, 255, 255, 1),
                                  ),
                                ),
                              )),
                        ),

                        // afs
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
