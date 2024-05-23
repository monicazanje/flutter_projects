import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plants_app/view/detailscreen.dart';
import 'package:plants_app/view/productaddtocart.dart';
import 'package:provider/provider.dart';
import 'package:plants_app/controller/productcontroller.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State createState() => _HomeState();
}

class _HomeState extends State {
  int currentIndex = 0;

  final List<String> imagelist = [
    "assets/Group 5318.png",
    "assets/Group 5318.png",
    "assets/Group 5318.png"
  ];
  @override
  Widget build(BuildContext context) {
    var productdetail = Provider.of<ProductController>(context, listen: false);
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 241, 241),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Row(
                children: [
                  SizedBox(
                    height: 60,
                    width: 180,
                    child: Text(
                      "Find your favorite plants",
                      style: GoogleFonts.poppins(
                          fontSize: 24, fontWeight: FontWeight.w400),
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        top: 10, bottom: 20, left: 20, right: 20),
                    child: Row(
                      children: [
                        Container(
                            height: 40,
                            width: 40,
                            margin: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(style: BorderStyle.solid),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(10),
                              ),
                              boxShadow: const [
                                BoxShadow(
                                  offset: Offset(0, 2),
                                  blurRadius: 5,
                                  spreadRadius: 3,
                                  color: Color.fromARGB(255, 201, 199, 199),
                                ),
                              ],
                            ),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const AddToCart(),
                                  ),
                                );
                              },
                              child: Image.asset(
                                "assets/shopping-bag.png",
                                width: 20,
                                height: 20,
                              ),
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                  top: 10, bottom: 20, left: 20, right: 20),
              child: Column(
                children: [
                  CarouselSlider(
                    items: imagelist
                        .map((imagelist) => Container(
                              margin: const EdgeInsets.only(
                                  top: 20, bottom: 10, left: 10, right: 10),
                              padding: const EdgeInsets.all(20),
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(204, 231, 185, 1),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: Row(
                                children: [
                                  const Spacer(
                                    flex: 1,
                                  ),
                                  Column(
                                    children: [
                                      const Spacer(
                                        flex: 1,
                                      ),
                                      Text(
                                        "30% OFF",
                                        style: GoogleFonts.poppins(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        "02-23 April",
                                        style: GoogleFonts.poppins(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      const Spacer(
                                        flex: 1,
                                      ),
                                    ],
                                  ),
                                  const Spacer(
                                    flex: 1,
                                  ),
                                  SizedBox(
                                    height: 100,
                                    width: 120,
                                    child: Image.asset("assets/Group 5318.png"),
                                  )
                                ],
                              ),
                            ))
                        .toList(),
                    options: CarouselOptions(
                      height: 150,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 4),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: imagelist.asMap().entries.map((entry) {
                      return Container(
                        width: 8.0,
                        height: 8.0,
                        margin: const EdgeInsets.symmetric(horizontal: 4.0),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            //  color: currentIndex == entry.key
                            // ? Colors.red // Active dot color
                            // : Colors.grey,
                            color: Colors.black),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Indoor",
                    style: GoogleFonts.poppins(
                        fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 230,
                  child: ListView.builder(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const DetailScreen(),
                              ),
                            );
                          },
                          child: Container(
                            margin: const EdgeInsets.only(
                                left: 20, top: 10, bottom: 10),
                            padding: const EdgeInsets.all(10),
                            height: 170,
                            width: 150,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "assets/plant img2.png",
                                ),
                                SizedBox(
                                  //height: 20,
                                  child: Text(
                                    "Snake Plants",
                                    style: GoogleFonts.dmSans(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.currency_rupee,
                                      size: 20,
                                    ),
                                    Text(
                                      "350",
                                      style: GoogleFonts.dmSans(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    const Spacer(
                                      flex: 1,
                                    ),
                                    Container(
                                      height: 30,
                                      width: 30,
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color:
                                              Color.fromRGBO(190, 190, 189, 1)),
                                      child: Image.asset(
                                        "assets/shopping-bag.png",
                                        height: 10,
                                        width: 10,
                                        // fit: BoxFit.fill,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                ),
                Container(
                  margin: const EdgeInsets.only(
                      left: 20, right: 20, top: 5, bottom: 5),
                  child: const Divider(
                    color: Color.fromRGBO(155, 160, 150, 1),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Outdoor",
                    style: GoogleFonts.poppins(
                        fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 220,
                  child: ListView.builder(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const DetailScreen(),
                              ),
                            );
                          },
                          child: Container(
                            margin: const EdgeInsets.only(
                              left: 20,
                              top: 10,
                            ),
                            padding: const EdgeInsets.all(10),
                            height: 170,
                            width: 150,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "assets/plantimg1.png",
                                ),
                                SizedBox(
                                  //height: 20,
                                  child: Text(
                                    "Snake Plants",
                                    style: GoogleFonts.dmSans(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.currency_rupee,
                                      size: 20,
                                    ),
                                    Text(
                                      "450",
                                      style: GoogleFonts.dmSans(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    const Spacer(
                                      flex: 1,
                                    ),
                                    Container(
                                      height: 30,
                                      width: 30,
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color:
                                              Color.fromRGBO(190, 190, 189, 1)),
                                      child: Image.asset(
                                        "assets/shopping-bag.png",
                                        height: 10,
                                        width: 10,
                                        // fit: BoxFit.fill,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
