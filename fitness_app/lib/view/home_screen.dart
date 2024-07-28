import 'package:fitness_app/view/navigation.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeState();
}

class _HomeState extends State<HomeScreen> {
  TextEditingController fitsearch = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 244, 244),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20, top: 50),
            child: Text(
              "Good Morning 🔥",
              style: GoogleFonts.lato(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: const Color.fromRGBO(31, 32, 41, 1),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
            child: Text(
              "Pramuditya Uzumaki",
              style: GoogleFonts.lato(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: const Color.fromRGBO(31, 32, 41, 1),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            child: SearchBar(
              controller: fitsearch,
              backgroundColor: const MaterialStatePropertyAll(Colors.white),
              constraints: const BoxConstraints(
                  minHeight: 40, minWidth: 400, maxHeight: 60, maxWidth: 420),
              shape: const MaterialStatePropertyAll(
                BeveledRectangleBorder(borderRadius: BorderRadius.zero),
              ),
              leading: const Icon(Icons.search),
              elevation: const MaterialStatePropertyAll(0),
              side: const MaterialStatePropertyAll(
                BorderSide(
                    style: BorderStyle.solid,
                    color: Color.fromRGBO(186, 194, 199, 13),
                    width: 0.5),
              ),
              hintText: "Search ",
              hintStyle: MaterialStatePropertyAll(
                GoogleFonts.inter(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(186, 194, 199, 13),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
            child: Text(
              "Popular Workouts",
              style: GoogleFonts.lato(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: const Color.fromRGBO(31, 32, 41, 1),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: SizedBox(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(
                      left: 10,
                      right: 10,
                    ),
                    // decoration: BoxDecoration(
                    //   border: Border.all(style: BorderStyle.solid),
                    //   color: Colors.pink,
                    // ),
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20),
                          ),
                          child: Container(
                            height: 200,
                            width: 280,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            child: Image.asset(
                              "assets/image (2).png",
                              fit: BoxFit.fill,
                              color: Colors.black.withOpacity(0.3),
                              colorBlendMode: BlendMode.softLight,
                            ),
                          ),
                        ),
                        Positioned(
                          right: 150,
                          left: 0,
                          top: 0,
                          child: Container(
                            // height: 500.0,
                            height: MediaQuery.of(context).size.height * 0.207,
                            // width: MediaQuery.of(context).size.width * 0.1,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Colors.black.withOpacity(0),
                                  Colors.black,
                                ],
                                stops: const [
                                  0.3,
                                  1.0,
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 30,
                          top: 20,
                          child: Text(
                            '''Lower Body
Training''',
                            style: GoogleFonts.lato(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: const Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 90,
                          left: 30,
                          child: Container(
                            padding: const EdgeInsets.only(
                                left: 8, right: 8, top: 4, bottom: 4),
                            decoration: const BoxDecoration(
                                color: Color.fromRGBO(255, 255, 255, 0.8),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12))),
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/ic_burn.png",
                                  scale: 1.2,
                                ),
                                Text(
                                  "  500 Kcal",
                                  style: GoogleFonts.lato(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: const Color.fromRGBO(31, 32, 41, 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 130,
                          left: 30,
                          child: Container(
                            padding: const EdgeInsets.only(
                                left: 8, right: 8, top: 4, bottom: 4),
                            decoration: const BoxDecoration(
                                color: Color.fromRGBO(255, 255, 255, 0.8),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12))),
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/Group 2.png",
                                  scale: 1.2,
                                ),
                                Text(
                                  "  50 Min",
                                  style: GoogleFonts.lato(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: const Color.fromRGBO(31, 32, 41, 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                            right: 20,
                            top: 70,
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromRGBO(187, 242, 70, 1)),
                              child: const Icon(
                                Icons.arrow_right,
                                color: Colors.black,
                                size: 35,
                              ),
                            ))
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, top: 20, bottom: 10),
            child: Text(
              "Today Plan",
              style: GoogleFonts.lato(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: const Color.fromRGBO(31, 32, 41, 1),
              ),
            ),
          ),
          Expanded(
              flex: 3,
              child: SizedBox(
                child: ListView.builder(
                  itemCount: 5,
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(
                          left: 20, right: 20, top: 10, bottom: 10),
                      decoration: const BoxDecoration(
                          // border: Border.all(style: BorderStyle.solid),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.white),
                      child: Stack(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            child: ClipRRect(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(20),
                              ),
                              child: Image.asset("assets/pushup.png"),
                            ),
                          ),
                          Positioned(
                            left: 125,
                            top: 20,
                            child: Text(
                              "Push Up",
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: const Color.fromRGBO(31, 32, 41, 1),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 125,
                            top: 45,
                            child: Text(
                              "100 Push up a day",
                              style: GoogleFonts.poppins(
                                fontSize: 13,
                                fontWeight: FontWeight.w700,
                                color: const Color.fromRGBO(25, 33, 38, 0.5),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 125,
                            top: 85,
                            child: LinearPercentIndicator(
                              width: 230,
                              lineHeight: 20,
                              percent: 0.5,
                              padding: EdgeInsets.zero,
                              center: Text(
                                "50%",
                                style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(31, 32, 41, 1),
                                ),
                              ),
                              progressColor:
                                  const Color.fromRGBO(187, 242, 70, 1),
                              backgroundColor:
                                  const Color.fromRGBO(242, 242, 242, 1),
                            ),
                          ),
                          Positioned(
                            right: 25,
                            top: 0,
                            child: Container(
                              padding: const EdgeInsets.only(
                                  left: 10, right: 10, top: 5, bottom: 5),
                              decoration: const BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10)),
                              ),
                              child: Text(
                                "Intermediate",
                                style: GoogleFonts.poppins(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                  color: const Color.fromRGBO(251, 251, 253, 1),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )),
        ],
      ),
      bottomNavigationBar:const  BottomNavigator()
    );
  }
}
