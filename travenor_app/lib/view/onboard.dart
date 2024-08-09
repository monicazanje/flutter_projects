import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Onboard extends StatefulWidget {
  const Onboard({super.key});
  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  List<dynamic> cursorlist = [
    "assets/img4.png",
    "assets/img1.png",
    "assets/img3.png",
  ];
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.7,
            child: CarouselSlider.builder(
              itemCount: 3,
              itemBuilder: (context, index, realIndex) {
                final imageurl = cursorlist[index];
                return Column(
                  children: [
                    Image.asset(
                      imageurl,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                    Container(
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Life is short and the world is',
                              style: GoogleFonts.inter(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
              options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 7 / 9,
                  viewportFraction: 1,
                  initialPage: 0,
                  autoPlayAnimationDuration: const Duration(seconds: 3),
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentindex = index;
                    });
                  }),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < 3; i++)
                currentindex == i
                    ? Container(
                        height: 7,
                        width: 62,
                        margin: const EdgeInsets.all(5),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          color: Color.fromRGBO(0, 153, 255, 1),
                        ),
                      )
                    : Container(
                        height: 7,
                        width: 7,
                        margin: const EdgeInsets.all(2),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          color: Color.fromRGBO(159, 159, 159, 1),
                        ),
                      ),
            ],
          ),
        ],
      ),
    );
  }
}
