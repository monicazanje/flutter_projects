import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet_app/view/main/home.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});
  @override
  State createState() => _OtpState();
}

class _OtpState extends State {
  bool done = false;

  TextEditingController optcontroller = TextEditingController();
  FocusNode otpfocus = FocusNode();
  @override
  void initState() {
    super.initState();
    done = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
          Container(
            margin:
                const EdgeInsets.only(left: 50, right: 50, top: 25, bottom: 25),
            padding: const EdgeInsets.all(10),
            child: Text(
              "An SMS sent to your mobile number +962 79 XXX-XXXX",
              textAlign: TextAlign.center,
              style: GoogleFonts.sora(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
          Text(
            "Enter six-digit code",
            style: GoogleFonts.sora(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: const Color.fromRGBO(120, 131, 141, 1),
            ),
          ),
          done
              ? Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(left: 30, right: 30),
                  padding: const EdgeInsets.only(left: 85, right: 85, top: 5),
                  child: TextField(
                    cursorHeight: 36,
                    style: GoogleFonts.sora(
                        fontSize: 36,
                        color: const Color.fromRGBO(25, 25, 25, 1),
                        fontWeight: FontWeight.w400),
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: "XXX-XXX",
                      hintStyle: GoogleFonts.sora(
                        fontWeight: FontWeight.w400,
                        fontSize: 36,
                        color: const Color.fromRGBO(186, 194, 199, 1),
                      ),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(77, 166, 107, 1), width: 3),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(77, 166, 107, 1), width: 3),
                      ),
                    ),
                  ),
                )
              : Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(left: 30, right: 30),
                  padding: const EdgeInsets.only(
                    left: 80,
                    right: 80,
                  ),
                  child: TextField(
                    cursorHeight: 30,
                    style: GoogleFonts.sora(
                        fontSize: 36,
                        color: const Color.fromRGBO(25, 25, 25, 1),
                        fontWeight: FontWeight.w400),
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: "XXX-XXX",
                      hintStyle: GoogleFonts.sora(
                        fontWeight: FontWeight.w400,
                        fontSize: 36,
                        color: const Color.fromRGBO(186, 194, 199, 1),
                      ),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(87, 50, 191, 1), width: 3),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(87, 50, 191, 1), width: 3),
                      ),
                    ),
                  ),
                ),
          done
              ? Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(
                      top: 20, left: 80, right: 80, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            done = !done;
                          });
                        },
                        child: Text(
                          "Resend code",
                          style: GoogleFonts.sora(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(87, 50, 191, 1),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "00:00",
                        style: GoogleFonts.sora(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromARGB(255, 164, 171, 174),
                        ),
                      ),
                    ],
                  ),
                )
              : Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(
                      top: 20, left: 80, right: 80, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            setState(() {
                              done = !done;
                            });
                          });
                        },
                        child: Text(
                          "Resend code",
                          style: GoogleFonts.sora(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromARGB(255, 164, 171, 174),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "00:32",
                        style: GoogleFonts.sora(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromARGB(255, 164, 171, 174),
                        ),
                      ),
                    ],
                  ),
                ),
          const Spacer(
            flex: 1,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const Home();
              }));
            },
            child: Container(
              margin: const EdgeInsets.only(bottom: 40, left: 20, right: 20),
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromRGBO(87, 50, 191, 1),
              ),
              child: Center(
                child: Text(
                  "Done",
                  style: GoogleFonts.sora(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
