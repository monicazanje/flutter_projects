import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_rental_app/view/producthomescreen.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});
  @override
  State createState() => _GetStartedState();
}

class _GetStartedState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 650,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/Rectangle 1.png"), fit: BoxFit.fill),
          ),
        ),
        const Spacer(
          flex: 1,
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            "Lets find your Paradise",
            style: GoogleFonts.poppins(
                fontSize: 22, fontWeight: FontWeight.w600, color: Colors.black),
          ),
        ),
        const Spacer(
          flex: 1,
        ),
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(left: 80, right: 80),
          child: Text(
            "Find your perfect dream space with just a few clicks",
            style: GoogleFonts.poppins(
                fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black),
          ),
        ),
        const Spacer(
          flex: 1,
        ),
        Container(
          padding:
              const EdgeInsets.only(bottom: 11, top: 11, left: 45, right: 45),
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
              color: Colors.blue),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomeScreen(),
                ),
              );
            },
            child: Text(
              "Get Started",
              style: GoogleFonts.poppins(
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
          ),
        ),
        const Spacer(
          flex: 1,
        ),
      ],
    ));
  }
}
