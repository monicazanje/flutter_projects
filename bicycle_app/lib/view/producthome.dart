import 'package:bicycle_app/view/productinfo.dart';
import 'package:bicycle_app/view/productshop.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State createState() => _HomePageState();
}

class _HomePageState extends State {
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                transform: GradientRotation(20),
                stops: [0.5, 0.5],
                colors: [
                  Color.fromRGBO(34, 40, 52, 1),
                  Color.fromRGBO(75, 76, 237, 1),
                ],
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(
                    left: 20, right: 20, top: 50, bottom: 25),
                child: Row(
                  children: [
                    // ignore: sized_box_for_whitespace
                    Container(
                      width: 200,
                      height: 85,
                      child: Text(
                        "Choose Your Bicycle ",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.poppins(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Color.fromARGB(255, 76, 167, 247),
                          Color.fromRGBO(75, 76, 237, 1),
                        ], stops: [
                          0.0,
                          1.0
                        ], transform: GradientRotation(70)),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        color: Color.fromRGBO(75, 76, 237, 1),
                      ),
                      child: Image.asset(
                        "assets/search-normal.png",
                        height: 30,
                        width: 30,
                        scale: 1,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                    color: Colors.grey.withOpacity(0.1),
                    boxShadow: [
                      BoxShadow(
                          spreadRadius: 2,
                          color: Colors.black.withOpacity(0.1),
                          offset: const Offset(10, 10),
                          blurRadius: 5)
                    ]),
                margin: const EdgeInsets.all(20),
                height: 200,
                width: double.infinity,
                child: Stack(
                  children: [
                    Positioned(
                      child: Image.asset("assets/pngwing (4).png"),
                    ),
                    Positioned(
                      top: 10,
                      right: 10,
                      child: Text(
                        "EXTREME ",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.allertaStencil(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      right: 10,
                      child: Text(
                        "30% OFF ",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.allertaStencil(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                    left: 20, top: 10, bottom: 10, right: 20),
                height: 50,
                width: 280,
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Color.fromARGB(255, 76, 167, 247),
                          Color.fromRGBO(75, 76, 237, 1),
                        ], stops: [
                          0.0,
                          1.0
                        ], transform: GradientRotation(70)),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        color: Color.fromRGBO(75, 76, 237, 1),
                      ),
                      child: Image.asset(
                        "assets/image 2.png",
                        height: 30,
                        width: 30,
                        scale: 1,
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Color.fromRGBO(255, 255, 255, 1),
                          Color.fromRGBO(161, 161, 161, 1),
                        ], stops: [
                          0.4,
                          1.0
                        ], transform: GradientRotation(70)),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        color: Color.fromRGBO(75, 76, 237, 1),
                      ),
                      child: Image.asset(
                        "assets/image 1 (1).png",
                        height: 30,
                        width: 30,
                        scale: 1,
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Color.fromRGBO(255, 255, 255, 1),
                          Color.fromRGBO(161, 161, 161, 1),
                        ], stops: [
                          0.4,
                          1.0
                        ], transform: GradientRotation(70)),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        color: Color.fromRGBO(75, 76, 237, 1),
                      ),
                      child: Image.asset(
                        "assets/image 3 (1).png",
                        height: 30,
                        width: 30,
                        scale: 1,
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Color.fromRGBO(255, 255, 255, 1),
                          Color.fromRGBO(161, 161, 161, 1),
                        ], stops: [
                          0.4,
                          1.0
                        ], transform: GradientRotation(70)),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        color: Color.fromRGBO(75, 76, 237, 1),
                      ),
                      child: Image.asset(
                        "assets/image 4.png",
                        height: 30,
                        width: 30,
                        scale: 1,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 5,
                  ),
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const InfoPage();
                        }));
                      },
                      child: Container(
                        margin: const EdgeInsets.only(
                            left: 20, bottom: 10, right: 20),
                        padding: const EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20),
                          ),
                          color: Colors.black.withOpacity(0.3),
                        ),
                        child: Stack(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(30),
                              child: Image.asset(
                                "assets/pngwing (1).png",
                                scale: 1,
                              ),
                            ),
                            Positioned(
                              bottom: 50,
                              left: 10,
                              child: Text(
                                "Road Bike",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(195, 195, 195, 1),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 25,
                              left: 10,
                              child: Text(
                                "Kiross",
                                textAlign: TextAlign.start,
                                style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 10,
                              left: 10,
                              child: Text(
                                "1,599.99",
                                textAlign: TextAlign.start,
                                style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(195, 195, 195, 1),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: 80,
        width: 50,
        padding: const EdgeInsets.only(left: 10, right: 10),
        decoration: const BoxDecoration(
          color: Color.fromRGBO(36, 44, 59, 1),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.only(
                    bottom: 15, left: 10, right: 10, top: 10),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 76, 167, 247),
                    Color.fromRGBO(75, 76, 237, 1),
                  ], stops: [
                    0.0,
                    1.0
                  ], transform: GradientRotation(70)),
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.elliptical(200, 50)),
                ),
                height: 50,
                width: 50,
                child: Image.asset(
                  "assets/house.png",
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const ShopPage();
                }));
              },
              child: Container(
                padding: const EdgeInsets.only(
                    bottom: 15, left: 10, right: 10, top: 10),
                height: 50,
                width: 50,
                child: Image.asset(
                  "assets/shop.png",
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.only(
                    bottom: 15, left: 10, right: 10, top: 10),
                height: 50,
                width: 50,
                child: Image.asset(
                  "assets/vc.png",
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.only(
                    bottom: 15, left: 10, right: 10, top: 10),
                height: 50,
                width: 50,
                child: Image.asset(
                  "assets/user.png",
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
