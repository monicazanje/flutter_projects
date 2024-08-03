import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travenor_app/view/onboard.dart';

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
          child: const Text(
            "Travenor",
            style: TextStyle(
                // fontFamily: 'aclonica',
                fontWeight: FontWeight.w600,
                fontSize: 34,
                color: Colors.white),
          ),
        ),
      ),
    );
  }
}
