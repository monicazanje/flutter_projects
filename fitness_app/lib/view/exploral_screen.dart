import 'package:fitness_app/view/navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});
  @override
  State<ExploreScreen> createState() => _ExploreState();
}

class _ExploreState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 244, 244),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(),
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 0.3,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 1,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Image.asset(
                      "assets/running.png",
                      fit: BoxFit.fill,
                      color: Colors.black.withOpacity(0.3),
                      colorBlendMode: BlendMode.softLight,
                    ),
                  ),
                ),
                Positioned(
                  right: 200,
                  left: 0,
                  top: 0,
                  child: Container(
                    // height: 500.0,
                    height: MediaQuery.of(context).size.height * 0.3,
                    // width: MediaQuery.of(context).size.width * 0.1,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Colors.black,
                          const Color.fromARGB(255, 50, 50, 50).withOpacity(0),
                        ],
                        stops: const [
                          0.0,
                          1.0,
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 30,
                  top: 50,
                  child: Text(
                    '''Best Quarantine
Workout''',
                    style: GoogleFonts.lato(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ),
                Positioned(
                    left: 30,
                    bottom: 40,
                    child: GestureDetector(
                      onTap: () {},
                      child: Row(
                        children: [
                          Text(
                            '''See more''',
                            style: GoogleFonts.lato(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: const Color.fromRGBO(187, 242, 70, 1),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                            color: Color.fromRGBO(187, 242, 70, 1),
                            size: 12,
                          )
                        ],
                      ),
                    )),
              ],
            ),
          ),
          Container(
            margin:
                const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 25),
            child: Text(
              "Best for you",
              style: GoogleFonts.lato(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: const Color.fromRGBO(31, 32, 41, 1),
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(left: 20),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(
                              left: 10, top: 10, bottom: 10, right: 10),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                          // height: 90,
                          // width: 200,
                          child: Row(
                            children: [
                              SizedBox(
                                height: 90,
                                width: 80,
                                child: ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10)),
                                    child: Image.asset(
                                      "assets/image 63.png",
                                      fit: BoxFit.fill,
                                    )),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Belly fat burner",
                                    style: GoogleFonts.lato(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color:
                                          const Color.fromRGBO(31, 32, 41, 1),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                        top: 12, bottom: 5),
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10, top: 5, bottom: 5),
                                    decoration: const BoxDecoration(
                                      color: Color.fromRGBO(241, 241, 241, 1),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                    ),
                                    child: Text(
                                      "10 min",
                                      style: GoogleFonts.lato(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color:
                                            const Color.fromRGBO(31, 32, 41, 1),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10, top: 5, bottom: 5),
                                    decoration: const BoxDecoration(
                                      color: Color.fromRGBO(241, 241, 241, 1),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                    ),
                                    child: Text(
                                      "Beginner",
                                      style: GoogleFonts.lato(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color:
                                            const Color.fromRGBO(31, 32, 41, 1),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                              left: 10, top: 10, bottom: 10, right: 10),

                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                          // height: 90,
                          // width: 200,
                          child: Row(
                            children: [
                              SizedBox(
                                height: 90,
                                width: 80,
                                child: ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10)),
                                    child: Image.asset(
                                      "assets/image 63.png",
                                      fit: BoxFit.fill,
                                    )),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Belly fat burner",
                                    style: GoogleFonts.lato(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color:
                                          const Color.fromRGBO(31, 32, 41, 1),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                        top: 12, bottom: 5),
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10, top: 5, bottom: 5),
                                    decoration: const BoxDecoration(
                                      color: Color.fromRGBO(241, 241, 241, 1),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                    ),
                                    child: Text(
                                      "10 min",
                                      style: GoogleFonts.lato(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color:
                                            const Color.fromRGBO(31, 32, 41, 1),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10, top: 5, bottom: 5),
                                    decoration: const BoxDecoration(
                                      color: Color.fromRGBO(241, 241, 241, 1),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                    ),
                                    child: Text(
                                      "Beginner",
                                      style: GoogleFonts.lato(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color:
                                            const Color.fromRGBO(31, 32, 41, 1),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          Container(
            margin:
                const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 20),
            child: Text(
              "Challenge",
              style: GoogleFonts.lato(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: const Color.fromRGBO(31, 32, 41, 1),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 110,
                  width: 110,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(187, 242, 70, 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Image.asset(
                          "assets/ic_burn.png",
                          color: Colors.white,
                          fit: BoxFit.fill,
                          height: 72,
                          width: 72,
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 10,
                        child: Text(
                          '''Plank
Challenge''',
                          style: GoogleFonts.lato(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(0, 0, 0, 1),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 110,
                  width: 110,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(25, 33, 38, 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Image.asset(
                          "assets/Group 5.png",
                          color: Colors.white,
                          // fit: BoxFit.fill,
                          height: 72,
                          width: 72,
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 10,
                        child: Text(
                          '''Sprint
Challenge''',
                          style: GoogleFonts.lato(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromARGB(255, 255, 254, 254),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 110,
                  width: 110,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Image.asset(
                          "assets/Group 7.png",
                          // fit: BoxFit.fill,
                          height: 72,
                          width: 72,
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 10,
                        child: Text(
                          '''Squat 
Challenge''',
                          style: GoogleFonts.lato(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(0, 0, 0, 1),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: const BottomNavigator(),
    );
  }
}
