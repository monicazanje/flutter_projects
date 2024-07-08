import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State createState() => _HomeState();
}

class _HomeState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(39, 6, 133, 1),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 16, right: 16, top: 50),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20, top: 10),
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  child:
                      Image.asset("assets/Profile photo.png", fit: BoxFit.fill),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10, top: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello",
                        style: GoogleFonts.sora(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Monika!",
                        style: GoogleFonts.sora(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin:
                const EdgeInsets.only(left: 16, right: 16, top: 20, bottom: 20),
            padding: const EdgeInsets.only(top: 24, bottom: 24),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                gradient: const LinearGradient(colors: [
                  Color.fromRGBO(80, 51, 164, 1),
                  Color.fromRGBO(51, 16, 152, 0.65)
                ])),
            child: Column(
              children: [
                Text(
                  "Main balance",
                  style: GoogleFonts.sora(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(178, 161, 228, 1),
                  ),
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "\$14,235",
                        style: GoogleFonts.sora(
                          fontSize: 36,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      TextSpan(
                        text: ".34",
                        style: GoogleFonts.sora(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                      left: 32, right: 32, top: 20, bottom: 20),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Column(
                          children: [
                            Image.asset("assets/upload-line.png"),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Top Up",
                              style: GoogleFonts.sora(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(178, 161, 228, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(
                        flex: 1,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Column(
                          children: [
                            Image.asset("assets/download-line.png"),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Withdraw",
                              style: GoogleFonts.sora(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(178, 161, 228, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(
                        flex: 1,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/Vector (12).png",
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Transfer",
                              style: GoogleFonts.sora(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(178, 161, 228, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
