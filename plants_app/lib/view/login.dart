import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plants_app/view/verification.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  @override
  State<Login> createState() => _Loginstate();
}

class _Loginstate extends State<Login> {
  TextEditingController mobileno = TextEditingController();
  FocusNode mobilenofocus = FocusNode();
  void sendotp()async{
    String phone="+91${mobileno.text.trim()}";
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: phone,
      codeSent: (verificationId,resendToken){
        ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Phone Verify Successfully"),
        ),
      );
         Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Verification(verificationId:verificationId )));
      },
    verificationCompleted: (credential){},
    verificationFailed: (ex){
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Please Enter Valid Phone Number"), 
        ),
      );
      print(ex.code.toString());},
    codeAutoRetrievalTimeout: (verificationId){},
    timeout:const  Duration(seconds: 30),);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Spacer(
              flex: 1,
            ),
            // Container(
            //   height: 130,
            //   width: 130,
            //   decoration: const BoxDecoration(
            //     border: Border.symmetric(horizontal: BorderSide()),
            //   ),
            //   alignment: Alignment.topLeft,
            //   child: Image.asset("assets/Group 5314.png"),
            // ),
            const Spacer(
              flex: 3,
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
            const Spacer(
              flex: 1,
            ),
            SizedBox(
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
            const Spacer(
              flex: 1,
            ),
            Container(
              height: 60,
              width: 360,
              decoration: const BoxDecoration(
                // gradient: LinearGradient(
                //   colors: [
                //     Color.fromRGBO(124, 180, 70, 1),
                //     Color.fromRGBO(62, 102, 24, 1),
                //   ],
                // ),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(124, 180, 70, 1),
                    Color.fromRGBO(62, 102, 24, 1),
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  // shadowColor: MaterialStatePropertyAll(
                  //   Color.fromRGBO(124, 180, 70, 1),
                  // ),
                ),
                onPressed: () {
                  sendotp();
                 
                },
                child: const Text(
                  "Sign In",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap:(){},
              child: Container(
                margin: const EdgeInsets.only(right: 40,top: 5),
                alignment: Alignment.bottomRight,
                child: Text(
                  " Sign up ? ",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                      fontSize: 14, fontWeight: FontWeight.w600,color:Colors.blue,),
                ),
              ),
            ),
            const Spacer(
              flex: 2,
            ),
            Container(
              height: 350,
              width: 350,
              margin: const EdgeInsets.only(
                  bottom: 30, top: 10, left: 10, right: 10),
              padding: const EdgeInsets.only(
                  top: 10, bottom: 10, left: 10, right: 10),
              decoration: const BoxDecoration(boxShadow: [
                BoxShadow(
                    blurRadius: 10,
                    color: Color.fromARGB(255, 236, 235, 235),
                    spreadRadius: 10)
              ],),

              child: Image.asset(
                "assets/plant img2.png",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
