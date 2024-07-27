import 'package:fitness_app/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboringScreen extends StatefulWidget {
  const OnboringScreen({super.key});
  @override
  State<OnboringScreen> createState() => _OnboringState();
}

class _OnboringState extends State<OnboringScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              AspectRatio(
                aspectRatio: 0.7,
                child: Image.asset(
                  "assets/Image (1).png",
                  fit: BoxFit.fill,
                  // color: Color.fromARGB(255, 240, 236, 236).withOpacity(1.0),
                  // colorBlendMode: BlendMode.softLight,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  // height: 500.0,
                  height: MediaQuery.of(context).size.height * 0.2,
                  // width: MediaQuery.of(context).size.width * 0.3,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.white.withOpacity(0.0),
                            Colors.white,
                          ],
                          stops: const [
                            0.0,
                            1.0
                          ])),
                ),
              ),
            ],
          ),
          Container(
            alignment: Alignment.center,
            margin:
                const EdgeInsets.only(top: 10, bottom: 25, left: 40, right: 40),
            child: Text(
              '''    Wherever You Are
Health Is Number One''',
              style: GoogleFonts.lato(
                fontSize: 24,
                fontWeight: FontWeight.w800,
                color: const Color.fromRGBO(31, 32, 41, 1),
              ),
            ),
          ),
          Text(
            "There is no instant way to a healthy life",
            style: GoogleFonts.lato(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: const Color.fromRGBO(31, 32, 41, 1),
            ),
          ),
          Stack(
            children: [
              Container(
                height: 7,
                width: 65,
                margin: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                    border: Border.all(style: BorderStyle.solid),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    color: Colors.black),
              ),
              Positioned(
                top: 30,
                left: 20,
                child: Container(
                  height: 7,
                  width: 30,
                  decoration: BoxDecoration(
                    border: Border.all(
                        style: BorderStyle.solid,
                        color: Colors.black,
                        width: 1.5),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    color: const Color.fromRGBO(187, 242, 70, 1),
                  ),
                ),
              ),
            ],
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const HomeScreen();
                  },
                ),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: const Color.fromRGBO(25, 33, 35, 1),
              ),
              child: Center(
                child: Text(
                  "Get Started",
                  style: GoogleFonts.lato(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
