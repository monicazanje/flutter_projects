import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travenor_app/model/cursormodel.dart';

class Onboard extends StatefulWidget {
  const Onboard({super.key});
  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  // List<dynamic> cursorlist = [
  //   "assets/img4.png",
  //   "assets/img1.png",
  //   "assets/img3.png",
  // ];
  // Map<String,List<String>> cursormap={
  //   "img":[]
  // };

  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            // height: MediaQuery.of(context).size.height * 0.8,
            width: MediaQuery.of(context).size.width * 1,
            decoration:
                BoxDecoration(border: Border.all(style: BorderStyle.solid)),
            child: CarouselSlider.builder(
              itemCount: 3,
              itemBuilder: (context, index, realIndex) {
                final imageurl = Cursor.cursorlist[index];
                return Stack(
                  children: [
                    Image.asset(
                      imageurl.img,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                    Positioned(
                      bottom: 10,
                      child: Container(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        width: 400,
                        height: 100,
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: imageurl.name,
                                style: GoogleFonts.aclonica(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w600,
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                ),
                              ),
                              TextSpan(
                                text: imageurl.dec,
                                style: GoogleFonts.aclonica(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w600,
                                  color: const Color.fromRGBO(207, 82, 10, 1),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    
                    // Container(
                    //   margin: const EdgeInsets.only(left: 20, right: 20),
                    //   height: 70,
                    //   child: Text(
                    //     imageurl.detail,
                    //     style: GoogleFonts.inter(
                    //       fontSize: 16,
                    //       fontWeight: FontWeight.w600,
                    //       color: const Color.fromRGBO(112, 41, 1, 1),
                    //     ),
                    //   ),
                    // )
                  ],
                );
              },
              options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 8 / 12,
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
          // const SizedBox(
          //   height: 15,
          // ),
          const Spacer(),
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
