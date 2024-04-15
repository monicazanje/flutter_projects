import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  @override
  State createState() => _Login_state();
}

class _Login_state extends State {
  TextEditingController mobileno = TextEditingController();
  FocusNode mobilenofocus = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 40,
              color: const Color.fromRGBO(123, 123, 123, 1),
            ),
            Container(
              height: 130,
              width: 130,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                border: Border.symmetric(horizontal: BorderSide()),
              ),
            ),
            const SizedBox(
              height: 140,
            ),
            SizedBox(
              height: 90,
              width: 250,
              child: Text(
                " Log In ",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    fontSize: 34, fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 60,
              width: 350,
              child: TextField(
                controller: mobileno,
                focusNode: mobilenofocus,
                decoration: InputDecoration(
                  hintText: "Mobile Number",
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  prefixIcon: const Icon(Icons.phone_outlined),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color.fromRGBO(62, 102, 24, 1),
                      width: 2,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              height: 60,
              width: 360,
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
                  // Navigator.push(
                  //     context, MaterialPageRoute(builder: (context) => const Login()));
                },
                child: const Text(
                  "Log In",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            SizedBox(
              height: 350,
              width: 350,
              // decoration: BoxDecoration(
              //   border: Border.all(style: BorderStyle.solid),
              // ),
              child: Image.asset(
                "assets/plant img2.png",
              ),
            ),
            Container(
              height: 45,
              color: const Color.fromRGBO(123, 123, 123, 1),
            ),
          ],
        ),
      ),
    );
  }
}
