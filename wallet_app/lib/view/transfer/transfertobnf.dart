import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet_app/view/transfer/paymentfail.dart';

class TransfertoBnf extends StatefulWidget {
  const TransfertoBnf({super.key});
  @override
  State<TransfertoBnf> createState() => _TransfertoBnfState();
}

class _TransfertoBnfState extends State<TransfertoBnf> {
  bool done = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 50, right: 20, bottom: 10),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_new_outlined,
                    size: 16,
                    color: Color.fromRGBO(87, 50, 191, 1),
                  ),
                ),
                Text(
                  "Back",
                  style: GoogleFonts.sora(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(87, 50, 191, 1),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            alignment: Alignment.center,
            child: Text(
              "Transfer to",
              style: GoogleFonts.sora(
                fontSize: 24,
                fontWeight: FontWeight.w400,
                color: const Color.fromRGBO(0, 0, 0, 1),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: const DecorationImage(
                        image: AssetImage("assets/Profile photo.png"),
                        fit: BoxFit.fill)),
              ),
              const SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Ali Ahmed",
                    style: GoogleFonts.sora(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      color: const Color.fromRGBO(25, 25, 25, 1),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "+1-300-555-0161",
                        style: GoogleFonts.sora(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: const Color.fromRGBO(120, 131, 141, 1),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            "Enter Amount",
            style: GoogleFonts.sora(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: const Color.fromRGBO(120, 131, 141, 1),
            ),
          ),
          done
              ? Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(left: 30, right: 30),
                  padding: const EdgeInsets.only(left: 85, right: 85, top: 5),
                  child: TextField(
                    cursorHeight: 36,
                    style: GoogleFonts.sora(
                        fontSize: 36,
                        color: const Color.fromRGBO(25, 25, 25, 1),
                        fontWeight: FontWeight.w400),
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: "\$00.00",
                      hintStyle: GoogleFonts.sora(
                        fontWeight: FontWeight.w400,
                        fontSize: 36,
                        color: const Color.fromRGBO(186, 194, 199, 1),
                      ),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(77, 166, 107, 1), width: 3),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(77, 166, 107, 1), width: 3),
                      ),
                    ),
                  ),
                )
              : Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(left: 30, right: 30),
                  padding: const EdgeInsets.only(
                    left: 80,
                    right: 80,
                  ),
                  child: TextField(
                    cursorHeight: 30,
                    style: GoogleFonts.sora(
                        fontSize: 36,
                        color: const Color.fromRGBO(25, 25, 25, 1),
                        fontWeight: FontWeight.w400),
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: "\$00.00",
                      hintStyle: GoogleFonts.sora(
                        fontWeight: FontWeight.w400,
                        fontSize: 36,
                        color: const Color.fromRGBO(186, 194, 199, 1),
                      ),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(87, 50, 191, 1), width: 3),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(87, 50, 191, 1), width: 3),
                      ),
                    ),
                  ),
                ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const TransferFail();
                  },
                ),
              );
            },
            child: Container(
              height: 50,
              margin: const EdgeInsets.only(bottom: 30, left: 20, right: 20),
              decoration: const BoxDecoration(color: Colors.amber),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.security_rounded,
                    color: Color.fromRGBO(0, 0, 0, 1),
                  ),
                  Text(
                    "Secure payment",
                    style: GoogleFonts.sora(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: const Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
