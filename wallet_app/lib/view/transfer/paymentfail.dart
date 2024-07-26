import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet_app/view/transfer/transfer.dart';

class TransferFail extends StatefulWidget {
  const TransferFail({super.key});
  @override
  State<TransferFail> createState() => _TransferFailState();
}

class _TransferFailState extends State<TransferFail> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Spacer(
            flex: 1,
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 20, top: 100),
            alignment: Alignment.center,
            child: Image.asset("assets/Illustration.png"),
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              "Transfer Failed :(",
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
              '''Your transfer has been declined 
              due to a technical issue''',
              style: GoogleFonts.sora(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: const Color.fromRGBO(83, 93, 102, 1),
              ),
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const Transfer();
                  },
                ),
              );
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
