import 'package:fashion_app/view/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Onbording extends StatefulWidget {
  const Onbording({super.key});
  @override
  State<Onbording> createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.6,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/Rectangle 989.png"),
                  fit: BoxFit.fill),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 40, left: 30, right: 40),
            child: Text(
              "Find The Best Collections",
              style: GoogleFonts.imprima(
                  fontSize: 42,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 30, right: 40),
            child: Text(
              "Get your dream item easily with FashionHub and get other intersting offer",
              style: GoogleFonts.imprima(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30, left: 30, right: 30),
            child: Row(
              children: [
                Container(
                  height: 62,
                  width: 150,
                  decoration: BoxDecoration(
                      border: Border.all(style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(30)),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Colors.white,
                      ),
                    ),
                    child: Text(
                      "Sign Up",
                      style: GoogleFonts.imprima(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 62,
                  width: 150,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const Home();
                          },
                        ),
                      );
                    },
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Color.fromRGBO(255, 122, 0, 1),
                      ),
                    ),
                    child: Text(
                      "Sign In",
                      style: GoogleFonts.imprima(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
