
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});
  @override
  State createState() => _PaymentState();
}

class _PaymentState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 20, top: 100),
            alignment: Alignment.center,
            child: Image.asset("assets/Illustration2.png"),
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              "Payment done!",
              style: GoogleFonts.sora(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: const Color.fromRGBO(0, 0, 0, 1),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 10, bottom: 20),
            child: Text(
              '''Bill payment has been done
             successfully''',
              style: GoogleFonts.sora(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: const Color.fromRGBO(83, 93, 102, 1),
              ),
            ),
          ),
          Container(
            margin:
                const EdgeInsets.only(left: 20, right: 20, top: 80, bottom: 10),
            child: Text(
              "Payment details",
              style: GoogleFonts.sora(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: const Color.fromRGBO(0, 0, 0, 1),
              ),
            ),
          ),
          Container(
            margin:
                const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
            width: double.infinity,
            padding:
                const EdgeInsets.only(top: 10, left: 10, bottom: 10, right: 10),
            decoration: BoxDecoration(
              border: Border.all(
                style: BorderStyle.solid,
                color: const Color.fromARGB(255, 208, 219, 230),
              ),
            ),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Biller",
                      style: GoogleFonts.sora(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: const Color.fromRGBO(120, 131, 141, 1),
                      ),
                    ),
                    Text(
                      "Electricity company inc.",
                      style: GoogleFonts.sora(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: const Color.fromRGBO(83, 93, 102, 1),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin:
                const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
            width: double.infinity,
            padding:
                const EdgeInsets.only(top: 10, left: 10, bottom: 10, right: 10),
            decoration: BoxDecoration(
              border: Border.all(
                style: BorderStyle.solid,
                color: const Color.fromARGB(255, 208, 219, 230),
              ),
            ),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Amount",
                      style: GoogleFonts.sora(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: const Color.fromRGBO(120, 131, 141, 1),
                      ),
                    ),
                    Text(
                      "\$132.32",
                      style: GoogleFonts.sora(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: const Color.fromRGBO(83, 93, 102, 1),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin:
                const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
            width: double.infinity,
            padding:
                const EdgeInsets.only(top: 10, left: 10, bottom: 10, right: 10),
            decoration: BoxDecoration(
              border: Border.all(
                style: BorderStyle.solid,
                color: const Color.fromARGB(255, 208, 219, 230),
              ),
            ),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Transaction no.",
                      style: GoogleFonts.sora(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: const Color.fromRGBO(120, 131, 141, 1),
                      ),
                    ),
                    Text(
                      "23010412432431",
                      style: GoogleFonts.sora(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: const Color.fromRGBO(83, 93, 102, 1),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                const Icon(Icons.filter_none_outlined)
              ],
            ),
          ),
          Container(
            margin:
                const EdgeInsets.only(left: 20, right: 20, bottom: 30, top: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.flag_outlined,
                  color: Color.fromRGBO(184, 50, 50, 1),
                ),
                Text(
                  "Report a problem",
                  style: GoogleFonts.sora(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: const Color.fromRGBO(184, 50, 50, 1),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              height: 50,
              margin: const EdgeInsets.only(bottom: 30, left: 20, right: 20),
              decoration:
                  const BoxDecoration(color: Color.fromRGBO(87, 50, 191, 1)),
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  "Back to wallet",
                  style: GoogleFonts.sora(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
