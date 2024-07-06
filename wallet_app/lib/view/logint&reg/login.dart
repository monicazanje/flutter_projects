import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  @override
  State createState() => _LoginState();
}

class _LoginState extends State {
  TextEditingController phonecontroller = TextEditingController();
  FocusNode phonefocus = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color.fromRGBO(238, 233, 253, 1),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 30),
                    child: Image.asset("assets/Group 4 (1).png"),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 50, bottom: 80),
                    child: Image.asset("assets/Group 10.png"),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.45,
                  child: Text(
                    "Enter your mobile number",
                    style: GoogleFonts.sora(
                      fontSize: 21,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(31, 32, 41, 1),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  child: Text(
                    "Mobile number",
                    style: GoogleFonts.sora(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(31, 32, 41, 1),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10, bottom: 50),
                  padding: const EdgeInsets.only(left: 15),
                  height: 60,
                  decoration: BoxDecoration(
                    border: Border.all(
                      style: BorderStyle.solid,
                      color: const Color.fromARGB(255, 212, 212, 212),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Image.asset("assets/Jordan (JO).png"),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "+962",
                        style: GoogleFonts.sora(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(31, 32, 41, 1),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.keyboard_arrow_down_outlined),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: TextField(
                          controller: phonecontroller,
                          focusNode: phonefocus,
                          decoration: const InputDecoration(
                            hintText: '7X-XXXXXXX',
                            hintStyle: TextStyle(
                              color: Color.fromRGBO(186, 194, 199, 1),
                            ),
                            errorBorder:
                                OutlineInputBorder(borderSide: BorderSide.none),
                            enabledBorder:
                                OutlineInputBorder(borderSide: BorderSide.none),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 40),
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromRGBO(87, 50, 191, 1),
                    ),
                    child: Center(
                      child: Text(
                        "Continue",
                        style: GoogleFonts.sora(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                const Divider(),
                Container(
                  margin: const EdgeInsets.only(bottom: 40, top: 40),
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
                          child: Image.asset(
                              "assets/Facebook_f_logo_(2019) 1.png"),
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
        ],
      ),
    ));
  }
}
