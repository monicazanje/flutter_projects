import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardPay extends StatefulWidget {
  const CardPay({super.key});
  @override
  State createState() => _CardPayState();
}

class _CardPayState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              const SizedBox(
                height: 150,
              ),
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
          Container(
            margin: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: Stack(
              children: [
                Container(
                  height: 250,
                  width: MediaQuery.of(context).size.width * 0.9,
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 10, bottom: 10),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(39, 6, 133, 1),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 24,
                        offset: Offset(0, 16),
                        color: Color.fromRGBO(0, 0, 0, 0.2),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Monica Zanje",
                            style: GoogleFonts.sora(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              color: const Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ),
                          Text(
                            "****8923",
                            style: GoogleFonts.sora(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              color: const Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 150,
                      ),
                      Text(
                        "Balance",
                        style: GoogleFonts.sora(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: const Color.fromRGBO(230, 221, 255, 1),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$2,354",
                            style: GoogleFonts.sora(
                              fontWeight: FontWeight.w600,
                              fontSize: 21,
                              color: const Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ),
                          const Image(
                              image: AssetImage("assets/rss-line.png"),
                              fit: BoxFit.fill),
                        ],
                      ),
                    ],
                  ),
                ),
                const Positioned(
                  top: -10,
                  left: -10,
                  child: Image(
                      image: AssetImage("assets/Ellipse 12.png"),
                      height: 162,
                      width: 162,
                      fit: BoxFit.fill),
                ),
                const Positioned(
                  bottom: -80,
                  right: -20,
                  child: Image(
                    image: AssetImage("assets/Ellipse 10.png"),
                    height: 200,
                    width: 300,
                    fit: BoxFit.fill,
                  ),
                ),
                const Positioned(
                  bottom: 0,
                  right: 0,
                  child: Image(
                    image: AssetImage("assets/Ellipse 11.png"),
                    height: 162,
                    width: 162,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          const Icon(
            Icons.wifi,
            color: Color.fromRGBO(120, 131, 141, 1),
          ),
          Text(
            "Move near a device to pay",
            style: GoogleFonts.sora(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: const Color.fromRGBO(120, 131, 141, 1),
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 50,
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(87, 50, 191, 1),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              margin: const EdgeInsets.only(left: 20, right: 20, bottom: 40),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.qr_code,
                    color: Colors.white,
                  ),
                  Text(
                    "QR Pay",
                    style: GoogleFonts.sora(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
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
