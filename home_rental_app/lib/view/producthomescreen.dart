import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State createState() => _HomeScreenState();
}

class _HomeScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 234, 234, 234),
        body: Container(
          margin: const EdgeInsets.only(left: 22, right: 22, top: 70),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Hey Dravid,",
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Container(
                    height: 48,
                    width: 48,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("assets/circle-profile-pic.jpg"),
                          fit: BoxFit.fill),
                    ),
                  )
                ],
              ),
              // const Spacer(
              //   flex: 1,
              // ),
              const SizedBox(
                height: 22,
              ),
              SizedBox(
                height: 60,
                width: 180,
                child: Text(
                  "Let’s find your best residence",
                  style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ),
              // const Spacer(
              //   flex: 1,
              // ),
              const SizedBox(
                height: 22,
              ),
              Container(
                margin: const EdgeInsets.only(left: 22, right: 22),
                padding: const EdgeInsets.only(
                    left: 14, top: 13, bottom: 13, right: 16),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Row(
                  children: [
                    const Icon(
                      Icons.search,
                      size: 24,
                      color: Colors.black,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      child: Text(
                        "Search your favourite paradise",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // const Spacer(
              //   flex: 1,
              // ),
              const SizedBox(
                height: 22,
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Text(
                      "Most popular",
                      style: GoogleFonts.inter(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
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
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // const Spacer(
              //   flex: 1,
              // ),
              const SizedBox(
                height: 22,
              ),
              Expanded(
                child: SizedBox(
                  child: ListView.builder(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          height: MediaQuery.of(context).size.height,
                          width: 210,
                          padding: const EdgeInsets.all(11),
                          margin: const EdgeInsets.only(right: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/Rectangle 5.png"),
                                      fit: BoxFit.fill),
                                ),
                              ),
                              // Text(
                              //   "Night Hill Villa",
                              //   style: GoogleFonts.poppins(
                              //     fontSize: 16,
                              //     fontWeight: FontWeight.w600,
                              //     color: Colors.blue,
                              //   ),
                              // ),
                              Text(
                                "London,Night Hill",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.blue,
                                ),
                              ),
                              Text(
                                "London,Night Hill",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
              ),
              const Spacer(
                flex: 1,
              )
            ],
          ),
        ));
  }
}
