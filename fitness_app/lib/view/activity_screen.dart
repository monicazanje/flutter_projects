import 'package:fitness_app/view/navigation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                const EdgeInsets.only(left: 20, right: 20, top: 40, bottom: 10),
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
                        margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, top: 10, bottom: 10),
                        height: 50,
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
                  }),
            ),
          ),
          const Spacer(
            flex: 6,
          )
        ],
      ),
      bottomNavigationBar: const BottomNavigator(),
    );
  }
}
