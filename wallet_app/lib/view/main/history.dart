import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class History extends StatefulWidget {
  const History({super.key});
  @override
  State createState() => _HistoryState();
}

class _HistoryState extends State {
  TextEditingController searchbar = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.zero,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(
                  top: 50, left: 20, right: 20, bottom: 20),
              child: Text(
                "History",
                style: GoogleFonts.inter(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: const Color.fromARGB(235, 19, 23, 13),
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  // width: 400,
                  child: SearchBar(
                    backgroundColor:
                        const MaterialStatePropertyAll(Colors.white),
                    controller: searchbar,
                    constraints: const BoxConstraints(
                        minHeight: 40,
                        minWidth: 250,
                        maxHeight: 60,
                        maxWidth: 270),
                    shape: const MaterialStatePropertyAll(
                        BeveledRectangleBorder(
                            borderRadius: BorderRadius.zero)),
                    leading: const Icon(Icons.search),
                    elevation: const MaterialStatePropertyAll(4.0),
                    side: const MaterialStatePropertyAll(
                      BorderSide(
                          style: BorderStyle.solid,
                          color: Color.fromRGBO(186, 194, 199, 13),
                          width: 0.5),
                    ),
                    hintText: "Value goes here",
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
                  margin: const EdgeInsets.only(
                    right: 10,
                  ),
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 9, bottom: 9),
                  decoration: BoxDecoration(
                      border: Border.all(
                    style: BorderStyle.solid,
                    color: const Color.fromRGBO(186, 194, 199, 13),
                  )),
                  child: Row(
                    children: [
                      Image.asset("assets/equalizer-line.png"),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Filter",
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromARGB(243, 12, 1, 1),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Container(
                    // margin: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 20, right: 20),
                          child: Text(
                            "Today",
                            style: GoogleFonts.inter(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(83, 93, 102, 1),
                            ),
                          ),
                        ),
                        SizedBox(
                          child: ListView.builder(
                            itemCount: 3,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              return Container(
                                margin: const EdgeInsets.only(
                                    bottom: 10, left: 20, right: 20, top: 5),
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            height: 32,
                                            width: 32,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                image: const DecorationImage(
                                                    image: AssetImage(
                                                        "assets/Netflix.png"),
                                                    fit: BoxFit.fill)),
                                          ),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Nike",
                                                style: GoogleFonts.sora(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 12,
                                                  color: const Color.fromRGBO(
                                                      25, 25, 25, 1),
                                                ),
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Yesterday",
                                                    style: GoogleFonts.sora(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 12,
                                                      color:
                                                          const Color.fromRGBO(
                                                              120, 131, 141, 1),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 4,
                                                  ),
                                                  Text(
                                                    "12:32",
                                                    style: GoogleFonts.sora(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 12,
                                                      color:
                                                          const Color.fromRGBO(
                                                              120, 131, 141, 1),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          const Spacer(),
                                          const Icon(
                                            Icons.add,
                                            size: 12,
                                            color:
                                                Color.fromRGBO(40, 155, 79, 1),
                                          ),
                                          Text(
                                            "\$50.23",
                                            style: GoogleFonts.sora(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12,
                                              color: const Color.fromRGBO(
                                                  184, 50, 50, 1),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          GestureDetector(
                                            onTap: () {},
                                            child: const Icon(
                                              Icons.arrow_forward_ios_rounded,
                                              color: Color.fromRGBO(
                                                  83, 93, 102, 1),
                                              size: 10,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Divider(),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        const Divider(
                          thickness: 7,
                          color: Color.fromRGBO(237, 239, 246, 1),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
