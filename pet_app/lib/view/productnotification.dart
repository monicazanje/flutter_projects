import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});
  @override
  State createState() => _NotificationPageState();
}

class _NotificationPageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: const EdgeInsets.only(
        left: 25,
        right: 25,
      ),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 55, bottom: 20),
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
                  "Notifications",
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
          Expanded(
            child: SizedBox(
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 10, bottom: 10),
                          child: Text(
                            "Today",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(0, 0, 0, 1),
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: const [
                              BoxShadow(
                                  blurRadius: 16,
                                  spreadRadius: -4,
                                  offset: Offset(0, 8),
                                  color: Color.fromRGBO(22, 34, 51, 0.08)),
                            ],
                            color: const Color.fromRGBO(255, 255, 255, 1),
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    height: 40,
                                    width: 40,
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: const Color.fromRGBO(
                                            252, 219, 193, 1)),
                                    child: const Icon(
                                      Icons.shopping_bag_outlined,
                                      color: Color.fromRGBO(245, 146, 69, 1),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  Expanded(
                                    child: Text(
                                      "Your checkout is successfull, product is on tne way",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          color: const Color.fromRGBO(
                                              31, 32, 41, 1)),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    height: 40,
                                    width: 40,
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: const Color.fromRGBO(
                                            252, 219, 193, 1)),
                                    child: const Icon(
                                      Icons.check,
                                      color: Color.fromRGBO(245, 146, 69, 1),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  Expanded(
                                    child: Text(
                                      "Appointment request accepted",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          color: const Color.fromRGBO(
                                              31, 32, 41, 1)),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    height: 40,
                                    width: 40,
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color.fromRGBO(
                                          252, 219, 193, 1),
                                    ),
                                    child: const Icon(
                                      Icons.favorite_border_outlined,
                                      color: Color.fromRGBO(245, 146, 69, 1),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  Expanded(
                                    child: Text(
                                      "Vaccinate your pet timely",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          color: const Color.fromRGBO(
                                              31, 32, 41, 1)),
                                    ),
                                  )
                                ],
                              ),
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
        ],
      ),
    ));
  }
}
