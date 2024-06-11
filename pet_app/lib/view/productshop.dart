import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});
  @override
  State createState() => _ShopScreenState();
}

class _ShopScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                padding: const EdgeInsets.only(
                    left: 32, right: 32, top: 50, bottom: 50),
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(245, 146, 69, 1),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hello Sarah",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Find your lovable Pets",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    const Icon(
                      Icons.shopping_cart_outlined,
                      size: 24,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin:
                const EdgeInsets.only(left: 45, right: 45, top: 20, bottom: 27),
            padding:
                const EdgeInsets.only(left: 16, top: 11, bottom: 11, right: 16),
            decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromRGBO(245, 146, 69, 1),
                  style: BorderStyle.solid,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(10))),
            child: Row(
              children: [
                SizedBox(
                  child: Text(
                    "search",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromARGB(255, 144, 145, 150),
                    ),
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                const Icon(
                  Icons.search,
                  size: 24,
                  color: Color.fromRGBO(245, 146, 69, 1),
                )
              ],
            ),
          ),
          Expanded(
            child: GridView.extent(
              maxCrossAxisExtent: 200,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              children: List.generate(6, (index) {
                return GestureDetector(
                  onTap: () {},
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                        //padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white,
                          image: const DecorationImage(
                              image: AssetImage(
                                'assets/Frame 2117 (3).png',
                              ),
                              fit: BoxFit.contain),
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 16,
                              spreadRadius: 5,
                              offset: Offset(0, 8),
                              color: Color.fromRGBO(22, 34, 51, 0.08),
                            ),
                          ],
                        ),
                        child: Container(
                          padding: const EdgeInsets.only(top: 8),
                          decoration: BoxDecoration(),
                        )),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
