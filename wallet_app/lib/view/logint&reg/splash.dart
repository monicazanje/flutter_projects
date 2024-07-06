import 'package:flutter/material.dart';
import 'package:wallet_app/view/logint&reg/login.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});
  @override
  State createState() => _SplashState();
}

class _SplashState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(87, 50, 191, 1),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const Login();
                },
              ),
            );
          },
          child: Image.asset(
            "assets/Group 4.png",
          ),
        ),
      ),
    );
  }
}
