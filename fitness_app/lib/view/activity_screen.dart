import 'package:fitness_app/view/navigation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});
  @override
  State<ActivityScreen> createState() => _ActivityState();
}

class _ActivityState extends State<ActivityScreen> {
  bool isselected = false;
  int selectedIndex = -1;
  // final List<String> daysOfWeek = [
  //   "Sun",
  //   "Mon",
  //   "Tue",
  //   "Wed",
  //   "Thu",
  //   "Fri",
  //   "Sat"
  // ];

  // final List<int> numbers = List<int>.generate(30, (index) => index + 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin:
                const EdgeInsets.only(left: 20, right: 20, top: 50, bottom: 10),
            child: Text(
              "July 2022",
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
                itemCount: 30,
                itemBuilder: (context, index) {
                  bool isSelected = selectedIndex == index;
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                        if (isSelected == false) {
                          isSelected = true;
                        } else {
                          isSelected = false;
                        }
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, top: 5, bottom: 5),
                      // height: 50,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                        color: isselected
                            ? const Color.fromRGBO(0, 0, 0, 1)
                            : const Color.fromRGBO(187, 242, 70, 1),
                      ),
                      child: Column(
                        children: [
                          Text(
                            "S",
                            style: GoogleFonts.lato(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: isselected
                                  ? const Color.fromARGB(255, 252, 252, 252)
                                  : const Color.fromRGBO(0, 0, 0, 1),
                            ),
                          ),
                          Text(
                            "${index + 1}",
                            style: GoogleFonts.lato(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: isselected
                                  ? const Color.fromARGB(255, 252, 252, 252)
                                  : const Color.fromRGBO(0, 0, 0, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Container(
            margin:
                const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
            child: Text(
              "Today Report",
              style: GoogleFonts.lato(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: const Color.fromRGBO(31, 32, 41, 1),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20, bottom: 5),
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                      height: 70,
                      width: 115,
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(
                          style: BorderStyle.solid,
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Column(
                        children: [
                          Text(
                            "Active calories",
                            style: GoogleFonts.lato(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(25, 33, 38, 0.5),
                            ),
                          ),
                          Text(
                            "645 Cal",
                            style: GoogleFonts.lato(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(31, 32, 41, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, top: 10, bottom: 10),
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(234, 236, 255, 1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Column(
                        children: [
                          Text(
                            "Training time",
                            style: GoogleFonts.lato(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(25, 33, 38, 1),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          CircularPercentIndicator(
                            radius: 40.0,
                            lineWidth: 15.0,
                            percent: 0.8,
                            reverse: true,
                            center: Text(
                              "80%",
                              style: GoogleFonts.lato(
                                fontSize: 13,
                                fontWeight: FontWeight.w800,
                                color: const Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                            backgroundColor: Colors.white,
                            progressColor:
                                const Color.fromRGBO(164, 138, 237, 1),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 15, bottom: 15),
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 20),
                            padding: const EdgeInsets.all(5),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Image.asset(
                              "assets/icon (16).png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Cycling",
                            style: GoogleFonts.lato(
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                              color: const Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        margin: const EdgeInsets.all(10),
                        width: 180,
                        height: 130,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Image.asset(
                          "assets/Map.png",
                          fit: BoxFit.fill,
                          scale: 1,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin:
                const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
            child: Row(
              children: [
                Container(
                  width: 200,
                  margin: const EdgeInsets.only(left: 10),
                  padding: const EdgeInsets.only(top: 15, bottom: 15),
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(255, 235, 235, 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 20),
                            padding: const EdgeInsets.all(5),
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(249, 185, 185, 1),
                            ),
                            child: Image.asset(
                              "assets/icon (15).png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Hearth Rate",
                            style: GoogleFonts.lato(
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                              color: const Color.fromRGBO(0, 0, 0, 1),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.all(10),
                        // width: 148,
                        height: 90,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Stack(
                          children: [
                            SizedBox(
                              width: 148,
                              height: 51,
                              child: Image.asset(
                                "assets/Heartrate.png",
                                fit: BoxFit.fill,
                                scale: 1,
                              ),
                            ),
                            Positioned(
                              right: 0,
                              bottom: 0,
                              child: Text(
                                "79 Bpm",
                                style: GoogleFonts.lato(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: const Color.fromRGBO(0, 0, 0, 1),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.only(left: 10),
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(255, 232, 198, 1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(left: 20),
                                padding: const EdgeInsets.all(5),
                                decoration: const BoxDecoration(
                                  color: Color.fromRGBO(248, 211, 157, 1),
                                ),
                                child: Image.asset(
                                  "assets/ic_steps.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Steps",
                                style: GoogleFonts.lato(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800,
                                  color: const Color.fromRGBO(0, 0, 0, 1),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "999/2000",
                            style: GoogleFonts.lato(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(0, 0, 0, 1),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 5),
                            child: LinearPercentIndicator(
                              percent: 0.5,
                              width: 115,
                              lineHeight: 12,
                              barRadius: const Radius.circular(10),
                              backgroundColor:
                                  const Color.fromRGBO(255, 237, 209, 1),
                              progressColor:
                                  const Color.fromRGBO(252, 196, 111, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10, top: 16),
                      padding: const EdgeInsets.all(16),
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(246, 207, 207, 1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Text(
                        "Keep it Up! 💪",
                        style: GoogleFonts.lato(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(0, 0, 0, 1),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(
                    left: 20, top: 10, bottom: 10, right: 10),
                padding: const EdgeInsets.only(
                    top: 15, left: 10, right: 10, bottom: 15),
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(239, 226, 255, 1),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          padding: const EdgeInsets.all(5),
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(164, 138, 237, 1),
                          ),
                          child: Image.asset(
                            "assets/Vector (13).png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Sleep",
                          style: GoogleFonts.lato(
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                            color: const Color.fromRGBO(0, 0, 0, 1),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      margin: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Image.asset(
                        "assets/Group 26.png",
                        fit: BoxFit.fill,
                        scale: 1,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10, right: 10, bottom: 10),
                padding: const EdgeInsets.only(left: 15, top: 15, bottom: 15),
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(216, 230, 236, 1),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          padding: const EdgeInsets.all(5),
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(149, 204, 227, 1),
                          ),
                          child: Image.asset(
                            "assets/Group 9 (1).png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Sleep",
                          style: GoogleFonts.lato(
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                            color: const Color.fromRGBO(0, 0, 0, 1),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Stack(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(top: 15),
                            child: Image.asset(
                              "assets/Rectangle 853.png",
                              fit: BoxFit.fill,
                              scale: 1,
                            ),
                          ),
                          Positioned(
                            top: 15,
                            left: 40,
                            child: Text(
                              "6/8 Cups",
                              style: GoogleFonts.lato(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(0, 0, 0, 1),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
      bottomNavigationBar: const BottomNavigator(),
    );
  }
}
