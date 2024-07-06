import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  @override
  State createState() => _LoginState();
}

class _LoginState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color.fromRGBO(238, 233, 253, 1),
            ),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 50),
                  child: Image.asset("assets/Group 4 (1).png"),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 50, bottom: 100),
                  child: Image.asset("assets/Group 10.png"),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  height: double.infinity,
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: Text(
                    "Enter your mobile number",
                    style: GoogleFonts.poppins(
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
