import 'package:flutter/material.dart';
import 'package:expanse_manager/resister_screen.dart';
import 'package:expanse_manager/main.dart';
import 'package:expanse_manager/transaction_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State createState() => _LoginScreenState();
}

class _LoginScreenState extends State {
  // TextEditingController UnameController = TextEditingController();
  // TextEditingController passController = TextEditingController();
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
          Image.asset("assets/Group 77.png"),
          const Spacer(
            flex: 1,
          ),
          Container(
            margin: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Login to your Account",
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  height: 50,
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(15),
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 3),
                          blurRadius: 10,
                          color: Color.fromRGBO(0, 0, 0, 0.15)),
                    ],
                  ),
                  child: TextField(
                    controller: unameController,
                    decoration: const InputDecoration(
                      hintText: " UserName",
                      hintStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                      // enabledBorder: OutlineInputBorder(
                      //   borderRadius: BorderRadius.all(
                      //     Radius.circular(10),
                      //   ),
                      // ),
                      // focusedBorder: OutlineInputBorder(
                      //   borderRadius: BorderRadius.all(
                      //     Radius.circular(10),
                      //   ),
                      // ),
                      border: InputBorder.none,
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                Container(
                  height: 50,
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(15),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: Color.fromRGBO(255, 255, 255, 1),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 3),
                        blurRadius: 10,
                        color: Color.fromRGBO(0, 0, 0, 0.15),
                      ),
                    ],
                  ),
                  child: TextField(
                    controller: passController,
                    decoration: const InputDecoration(
                        hintText: "Password",
                        hintStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                        // enabledBorder: OutlineInputBorder(
                        //   borderRadius: BorderRadius.all(
                        //     Radius.circular(10),
                        //   ),
                        // ),
                        // focusedBorder: OutlineInputBorder(
                        //   borderRadius: BorderRadius.all(
                        //     Radius.circular(10),
                        //   ),
                        // ),
                        border: InputBorder.none),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.all(10),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const TransactionScreen(),
                        ),
                      );
                    },
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all<Size>(
                        const Size(360.0, 50.0),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      backgroundColor: const MaterialStatePropertyAll(
                        Color.fromRGBO(14, 161, 125, 1),
                      ),
                    ),
                    child: const Text("Sign In "),
                  ),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Don’t have an account? "),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ResisterScreen()),
                  );
                },
                child: const Text(
                  "Sign up ",
                  style: TextStyle(color: Colors.blue),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
