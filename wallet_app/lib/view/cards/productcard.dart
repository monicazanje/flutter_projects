import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          Expanded(
            // height: 700,
            child: SizedBox(
              child: ListView.builder(
                padding: EdgeInsets.only(bottom: 30),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return GestureDetector(
                      onTap: () {
                        // Navigator.push(context, MaterialPageRoute(
                        //   builder: (context) {
                        //     return const CardPayScreen();
                        //   },
                        // ));
                      },
                      child: Stack(
                        children: [
                          Container(
                            height: 210,
                            width: double.infinity,
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(39, 6, 133, 1),
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
                                Spacer(),
                                Text(
                                  "Balance",
                                  style: GoogleFonts.sora(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color:
                                        const Color.fromRGBO(230, 221, 255, 1),
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
                                    const Icon(
                                      Icons.wifi,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          // Positioned(
                          //   top: 0,
                          //   left: 0,
                          //   child: Image(
                          //       image:
                          //           AssetImage("assets/card/Ellipse1 card.png"),
                          //       height: 162,
                          //       width: 162,
                          //       fit: BoxFit.fill),
                          // ),
                          // Positioned(
                          //   bottom: 0,
                          //   right: 0,
                          //   child: Image(
                          //     image:
                          //         AssetImage("assets/card/Ellipse2 card.png"),
                          //     height: 150,
                          //     width: 150,
                          //     fit: BoxFit.fill,
                          //   ),
                          // ),
                          Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                height: 125,
                                width: 250,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(125),
                                      topRight: Radius.circular(125)),
                                  color: Color.fromRGBO(111, 69, 233, 0.2),
                                ),
                              )),
                        ],
                      ));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
