import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Gallery extends StatefulWidget {
  const Gallery({super.key});
  @override
  State createState() => _GalleryState();
}

class _GalleryState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              //alignment: Alignment.bottomLeft,
              height: 450,

              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/111 1.png'),
                  fit: BoxFit.cover,
                ),
                // boxShadow: [
                //   BoxShadow(
                //     blurRadius: 10,
                //     // offset: const Offset(0, 3),
                //     color: Colors.black,
                //   )
                // ]
              ),
              child: Container(
                margin: const EdgeInsets.only(bottom: 100, left: 30),
                alignment: Alignment.bottomLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'A.L.O.N.E',
                      style: GoogleFonts.inter(
                          fontSize: 36,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(255, 255, 255, 1)),
                    ),
                    const SizedBox(
                      height: 11,
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          top: 10, bottom: 10, left: 20, right: 20),
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(255, 46, 0, 1),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Gallery(),
                              ));
                        },
                        child: Text(
                          "Subscribe",
                          style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromARGB(255, 0, 0, 0)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 7,
                    width: 21,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        color: Color.fromRGBO(255, 61, 0, 1)),
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  Container(
                    height: 7,
                    width: 7,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        color: Color.fromRGBO(159, 159, 159, 1)),
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  Container(
                    height: 7,
                    width: 7,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        color: Color.fromRGBO(159, 159, 159, 1)),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Text(
                    "Discography",
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(255, 61, 0, 1),
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Text(
                    "See all",
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromARGB(248, 228, 184, 24),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {},
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              top: 10, bottom: 10, left: 15, right: 15),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: Image.asset(
                            "assets/Rectangle 32.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 15),
                          child: Text(
                            "Dead inside",
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromARGB(203, 200, 200, 24),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 15),
                          child: Text(
                            "2020",
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromARGB(203, 200, 200, 24),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 15, right: 15, top: 10),
              child: Row(
                children: [
                  Text(
                    "Popular singles",
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(203, 200, 200, 1),
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Text(
                    "See all",
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromARGB(248, 228, 184, 24),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(
                          left: 15, right: 15, bottom: 15),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            child: Image.asset(
                              "assets/Rectangle 34.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(left: 15),
                                child: Text(
                                  "We Are Chaos",
                                  style: GoogleFonts.inter(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color:
                                        const Color.fromRGBO(203, 200, 200, 1),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(
                                        left: 15, right: 15),
                                    child: Text(
                                      "2020",
                                      style: GoogleFonts.inter(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: const Color.fromRGBO(
                                            203, 200, 200, 1),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "*",
                                    style: GoogleFonts.inter(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: const Color.fromRGBO(
                                          203, 200, 200, 1),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 15),
                                    child: Text(
                                      "Easy Living",
                                      style: GoogleFonts.inter(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: const Color.fromRGBO(
                                            203, 200, 200, 1),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap:(){},
                            child: Container(
                              child: Column(children: [
                                Container()
                              ],),
                            ),
                          )

                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
