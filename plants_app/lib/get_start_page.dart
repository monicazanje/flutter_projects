import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plants_app/login.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});
  @override
  State createState() => _Getstarted_state();
}

class _Getstarted_state extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 32,
            color: const Color.fromRGBO(123, 123, 123, 1),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            height: 450,
            width: 360,
            // decoration: BoxDecoration(
            //   border: Border.all(style: BorderStyle.solid),
            // ),
            child: Image.asset(
              "assets/plantimg1.png",
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            height: 90,
            width: 250,
            child: Text(
              "Enjoy your          life with Plants",
              style: GoogleFonts.poppins(
                  fontSize: 34, fontWeight: FontWeight.w400),
            ),
          ),
          Container(
            height: 50,
            width: 320,
            margin: const EdgeInsets.only(
              top: 90,
              left: 15,
              right: 15,
              bottom: 90,
            ),
            // decoration: const BoxDecoration(
            //   boxShadow: [
            //     BoxShadow(
            //       blurRadius: 40,
            //       color: Color.fromRGBO(124, 180, 70, 1),
            //     ),
            //   ],
            // ),
            child: ElevatedButton(
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                  Color.fromRGBO(62, 102, 24, 1),
                ),
                // shadowColor: MaterialStatePropertyAll(
                //   Color.fromRGBO(124, 180, 70, 1),
                // ),
              ),
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Login()));
              },
              child: const Text(
                "Get Started >",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          Container(
            height: 32,
            color: const Color.fromRGBO(123, 123, 123, 1),
          ),
        ],
      ),
    );
  }
}
