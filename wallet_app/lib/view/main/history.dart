import 'package:flutter/material.dart';
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin:
                const EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 20),
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
                  backgroundColor: const MaterialStatePropertyAll(Colors.white),
                  controller: searchbar,
                  constraints: const BoxConstraints(
                      minHeight: 40,
                      minWidth: 250,
                      maxHeight: 60,
                      maxWidth: 270),
                  shape: const MaterialStatePropertyAll(
                      BeveledRectangleBorder(borderRadius: BorderRadius.zero)),
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
                        color: const Color.fromARGB(235, 19, 23, 13),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
