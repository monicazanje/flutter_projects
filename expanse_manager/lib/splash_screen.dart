import 'package:flutter/material.dart';
import 'package:expanse_manager/login_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});
  @override
  State createState() => _SplashScreenstate();
}

class _SplashScreenstate extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 24,
            color: const Color.fromRGBO(196, 196, 196, 1),
          ),
          const Spacer(
            flex: 1,
          ),
          Container(
            height: 144,
            width: 144,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromRGBO(196, 196, 196, 1),
            ),
            child: Image.asset("assets/Group 77.png"),
          ),
          const Spacer(
            flex: 1,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginScreen()),
              );
            },
            child: Text(
              "Expense Manager",
              style: GoogleFonts.poppins(
                textStyle:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}
