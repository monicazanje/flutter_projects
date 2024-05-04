import 'package:advance_quize_app/controller/quizecontroller.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State createState() => _HomePageState();
}

class _HomePageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Spacer(
              flex: 1,
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: Row(
                children: [
                  const Spacer(
                    flex: 1,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 50,
                        width: 300,
                        child: Text(
                          " Hi Monika",
                          style: GoogleFonts.dmSans(
                              fontSize: 25, fontWeight: FontWeight.w700),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                        width: 300,
                        child: Text(
                          " Great to see you again!",
                          style: GoogleFonts.dmSans(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Container(
                    height: 64,
                    width: 64,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(250, 188, 154, 1),
                    ),
                  )
                ],
              ),
            ),
            // Container(
            //   height: 80,
            //   width: 300,
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(10),
            //     color: const Color.fromRGBO(255, 237, 217, 1),
            //   ),
            //   child: Row(
            //     children: [
            //       Container(
            //         margin: const EdgeInsets.all(20),
            //         alignment: Alignment.center,
            //         height: 45,
            //         width: 45,
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(10),
            //           color: Colors.white,
            //         ),
            //         child: Text(
            //           "M",
            //           style: GoogleFonts.dmSans(
            //               fontSize: 20, fontWeight: FontWeight.w700),
            //         ),
            //       ),
            //       Text(
            //         "Math",
            //         style: GoogleFonts.dmSans(
            //             fontSize: 20, fontWeight: FontWeight.w700),
            //       ),
            //       const Spacer(
            //         flex: 1,
            //       ),
            //       IconButton(
            //         onPressed: () {},
            //         icon: const Icon(Icons.arrow_forward_ios),
            //       ),
            //     ],
            //   ),
            // ),
            Consumer<QuizeController>(
              builder: (context, value, child) {
                return ListView.builder(
                  itemCount: value.listName.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(
                          right: 30, left: 30, top: 10, bottom: 10),
                      height: 80,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromRGBO(255, 237, 217, 1),
                      ),
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(20),
                            alignment: Alignment.center,
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Text(
                              value.listName[index].first,
                              style: GoogleFonts.dmSans(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                          ),
                          Text(
                            value.listName[index].name,
                            style: GoogleFonts.dmSans(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_forward_ios),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
            const Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
