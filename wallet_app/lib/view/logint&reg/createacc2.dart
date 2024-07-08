import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet_app/view/logint&reg/opt.dart';

class Createaccsec extends StatefulWidget {
  const Createaccsec({super.key});
  @override
  State createState() => _CreateaccsecState();
}

class _CreateaccsecState extends State {
  TextEditingController name = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController email = TextEditingController();
  FocusNode namef = FocusNode();
  FocusNode passf = FocusNode();
  FocusNode emailf = FocusNode();
  bool visible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 50, right: 20),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_new_outlined,
                      size: 16,
                      color: Color.fromRGBO(87, 50, 191, 1),
                    ),
                  ),
                  Text(
                    "Back",
                    style: GoogleFonts.sora(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(87, 50, 191, 1),
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Image.asset("assets/Group 4 (2).png"),
                  const Spacer(
                    flex: 2,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 150,
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Create Account",
                    style: GoogleFonts.sora(
                      fontSize: 21,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Name",
                    style: GoogleFonts.sora(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(31, 32, 41, 1),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 15),
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border.all(
                        style: BorderStyle.solid,
                        color: const Color.fromARGB(255, 212, 212, 212),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      controller: name,
                      focusNode: namef,
                      keyboardType: TextInputType.emailAddress,
                      obscureText: visible,
                      decoration: const InputDecoration(
                        hintText: "e.g. John Doe",
                        hintStyle: TextStyle(
                          color: Color.fromRGBO(186, 194, 199, 1),
                        ),
                        errorBorder:
                            OutlineInputBorder(borderSide: BorderSide.none),
                        enabledBorder:
                            OutlineInputBorder(borderSide: BorderSide.none),
                        focusedBorder:
                            OutlineInputBorder(borderSide: BorderSide.none),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Email",
                    style: GoogleFonts.sora(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(31, 32, 41, 1),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 15),
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border.all(
                        style: BorderStyle.solid,
                        color: const Color.fromARGB(255, 212, 212, 212),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      controller: email,
                      focusNode: emailf,
                      keyboardType: TextInputType.emailAddress,
                      obscureText: visible,
                      decoration: const InputDecoration(
                        hintText: "e.g. email@example.com",
                        hintStyle: TextStyle(
                          color: Color.fromRGBO(186, 194, 199, 1),
                        ),
                        errorBorder:
                            OutlineInputBorder(borderSide: BorderSide.none),
                        enabledBorder:
                            OutlineInputBorder(borderSide: BorderSide.none),
                        focusedBorder:
                            OutlineInputBorder(borderSide: BorderSide.none),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Password",
                    style: GoogleFonts.sora(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(31, 32, 41, 1),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 15),
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border.all(
                        style: BorderStyle.solid,
                        color: const Color.fromARGB(255, 212, 212, 212),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      controller: pass,
                      focusNode: passf,
                      keyboardType: TextInputType.emailAddress,
                      obscureText: visible,
                      decoration: InputDecoration(
                        hintText: "Enter your password",
                        hintStyle: const TextStyle(
                          color: Color.fromRGBO(186, 194, 199, 1),
                        ),
                        errorBorder: const OutlineInputBorder(
                            borderSide: BorderSide.none),
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide.none),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide.none),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              visible = !visible;
                            });
                          },
                          icon: Icon(visible
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                  top: 20, bottom: 20, left: 20, right: 20),
              child: Row(
                children: [
                  Container(
                    height: 15,
                    width: 15,
                    decoration: BoxDecoration(
                        border: Border.all(style: BorderStyle.solid)),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "I accept",
                          style: GoogleFonts.sora(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(31, 32, 41, 1),
                          ),
                        ),
                        TextSpan(
                          text: " terms and conditions",
                          style: GoogleFonts.sora(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(87, 50, 191, 1),
                          ),
                        ),
                        TextSpan(
                          text: " and",
                          style: GoogleFonts.sora(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(31, 32, 41, 1),
                          ),
                        ),
                        TextSpan(
                          text: " privacy policy",
                          style: GoogleFonts.sora(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(87, 50, 191, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const Otp();
                }));
              },
              child: Container(
                margin: const EdgeInsets.only(
                    top: 20, bottom: 20, left: 20, right: 20),
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromRGBO(87, 50, 191, 1),
                ),
                child: Center(
                  child: Text(
                    "Create a new account",
                    style: GoogleFonts.sora(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  const Expanded(child: Divider()),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    "or continue using   ",
                    style: GoogleFonts.sora(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                  const Expanded(child: Divider()),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                  bottom: 40, top: 20, left: 20, right: 20),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.only(
                          top: 10, bottom: 10, left: 45, right: 45),
                      decoration: BoxDecoration(
                        border: Border.all(style: BorderStyle.solid),
                      ),
                      child: Image.asset("assets/Facebook_f_logo_(2019) 1.png"),
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.only(
                          top: 10, bottom: 10, left: 45, right: 45),
                      decoration: BoxDecoration(
                        border: Border.all(style: BorderStyle.solid),
                      ),
                      child: Image.asset("assets/g1520.png"),
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.only(
                          top: 10, bottom: 10, left: 45, right: 45),
                      decoration: BoxDecoration(
                        border: Border.all(style: BorderStyle.solid),
                      ),
                      child: Image.asset("assets/Frame 4.png"),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
