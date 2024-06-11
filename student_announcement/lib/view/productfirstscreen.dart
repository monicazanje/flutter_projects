import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});
  @override
  State createState() => _FirstScreenState();
}

class _FirstScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Student App',
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 30, bottom: 30),
              child: const Center(
                child: Text(
                  'Announcements',
                  style: TextStyle(color: Colors.blue, fontSize: 30),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(
                          top: 20, bottom: 20, left: 20, right: 20),
                      padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 16,
                            spreadRadius: 5,
                            offset: Offset(0, 8),
                            color: Color.fromRGBO(22, 34, 51, 0.08),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(16),
                            child: Image.asset(
                              'assets/School-Holiday-6.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "Title :",
                                style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                              Text(
                                " Title",
                                style: GoogleFonts.poppins(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Description :",
                                style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                              Container(
                                width: 230,
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: Text(
                                  " Title sdfghjkloiuytgfvbnmkjytrdxc nm  ufyghjkiuyfhjkiwughsbvdn    nhjgytuirkf,mnbhgjkfa,cmsz   nghyturikjmhj",
                                  style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  }),
            )
          ],
        ));
  }
}
