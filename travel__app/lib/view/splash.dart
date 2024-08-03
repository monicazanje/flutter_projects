import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel__app/view/onboade.dart';


class Splash extends StatefulWidget {
  const Splash({super.key});
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const Onboard();
                },
              ),
            );
          },
          child: Text(
                    "Discography",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
        ),
      ),
    );
  }
}
