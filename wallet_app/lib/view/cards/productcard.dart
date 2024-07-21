import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet_app/view/cards/cardpayment.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({super.key});
  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin:
                const EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 10),
            child: Row(
              children: [
                Text(
                  "My Cards",
                  style: GoogleFonts.inter(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: const Color.fromARGB(235, 19, 23, 13),
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text(
                        "Add card",
                        style: GoogleFonts.sora(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(87, 50, 191, 1),
                        ),
                      ),
                      const Icon(
                        Icons.add,
                        size: 16,
                        color: Color.fromRGBO(87, 50, 191, 1),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 16, right: 16, top: 30),
            child: Stack(
              children: [
                Positioned(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 328,
                      width: MediaQuery.of(context).size.width * 0.9,
                      padding: const EdgeInsets.only(
                          top: 10, bottom: 10, left: 20, right: 20),
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(230, 221, 255, 1),
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: const [
                            BoxShadow(
                                blurRadius: 24,
                                offset: Offset(0, 16),
                                color: Color.fromRGBO(0, 0, 0, 0.2))
                          ]),
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
                                  color: const Color.fromARGB(255, 9, 9, 9),
                                ),
                              ),
                              Text(
                                "****8923",
                                style: GoogleFonts.sora(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: const Color.fromARGB(255, 12, 12, 12),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 130,
                          ),
                          Text(
                            "Balance",
                            style: GoogleFonts.sora(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: const Color.fromARGB(255, 14, 14, 14),
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
                                  color: const Color.fromARGB(255, 5, 5, 5),
                                ),
                              ),
                              const Icon(
                                Icons.wifi,
                                color: Color.fromARGB(255, 1, 1, 1),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 50,
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.only(
                          top: 10, bottom: 10, left: 20, right: 20),
                      height: 328,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(111, 69, 233, 1),
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 24,
                              offset: Offset(0, 16),
                              color: Color.fromRGBO(0, 0, 0, 0.2),
                            ),
                          ]),
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
                            height: 130,
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
                              const Icon(
                                Icons.wifi,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 100,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const CardPay();
                      }));
                    },
                    child: Stack(
                      children: [
                        Container(
                          height: 350,
                          width: MediaQuery.of(context).size.width * 0.9,
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 10, bottom: 10),
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(39, 6, 133, 1),
                            borderRadius: BorderRadius.circular(16),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Monica Zanje",
                                    style: GoogleFonts.sora(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12,
                                      color: const Color.fromRGBO(
                                          255, 255, 255, 1),
                                    ),
                                  ),
                                  Text(
                                    "****8923",
                                    style: GoogleFonts.sora(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12,
                                      color: const Color.fromRGBO(
                                          255, 255, 255, 1),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 130,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "\$2,354",
                                    style: GoogleFonts.sora(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 21,
                                      color: const Color.fromRGBO(
                                          255, 255, 255, 1),
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
                          top: 0,
                          left: 0,
                          child: Image(
                              image: AssetImage("assets/Ellipse 12.png"),
                              height: 162,
                              width: 162,
                              fit: BoxFit.fill),
                        ),
                        const Positioned(
                          bottom: 0,
                          right: -40,
                          child: Image(
                            image: AssetImage("assets/Ellipse 10.png"),
                            height: 200,
                            width: 300,
                            fit: BoxFit.fill,
                          ),
                        ),
                        const Positioned(
                          bottom: 100,
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
