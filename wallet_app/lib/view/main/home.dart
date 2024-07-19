import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet_app/view/main/navigator.dart';

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
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
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
                      const Spacer(flex: 1),
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
                      const VerticalDivider(
                        color: Color.fromARGB(255, 106, 170, 222),
                        thickness: 1,
                        width: 20,
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
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 20, top: 20),
              decoration: const BoxDecoration(color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Recent Transfers",
                    style: GoogleFonts.sora(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                          top: 20,
                          bottom: 10,
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 64,
                              width: 64,
                              decoration: const BoxDecoration(
                                  color: Color.fromRGBO(178, 161, 228, 1),
                                  shape: BoxShape.circle),
                              child: const Icon(Icons.add),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Add",
                              style: GoogleFonts.sora(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 130,
                          margin: const EdgeInsets.only(top: 10, right: 10),
                          child: ListView.builder(
                            itemCount: 5,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: const EdgeInsets.all(10),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 64,
                                      width: 64,
                                      margin: const EdgeInsets.only(top: 10),
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle),
                                      child: Image.asset(
                                          "assets/Profile photo.png",
                                          fit: BoxFit.cover),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      "Ali",
                                      style: GoogleFonts.sora(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10, right: 20),
                    child: Row(
                      children: [
                        Text(
                          "Latest Transactions",
                          style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: const Color.fromRGBO(0, 0, 0, 1),
                          ),
                        ),
                        const Spacer(
                          flex: 1,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            "View all",
                            style: GoogleFonts.inter(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromARGB(194, 62, 76, 43),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(color: Colors.white),
              child: ListView.builder(
                itemCount: 7,
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  return Container(
                    margin:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 35,
                              width: 35,
                              child: Image.asset(
                                "assets/Wallmart.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Walmart",
                                  style: GoogleFonts.sora(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12,
                                    color: const Color.fromRGBO(25, 25, 25, 1),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Today",
                                      style: GoogleFonts.sora(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: const Color.fromRGBO(
                                            120, 131, 141, 1),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      "12:32",
                                      style: GoogleFonts.sora(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: const Color.fromRGBO(
                                            120, 131, 141, 1),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Spacer(),
                            const Icon(
                              Icons.add,
                              size: 12,
                              color: Color.fromRGBO(40, 155, 79, 1),
                            ),
                            Text(
                              "\$430.00",
                              style: GoogleFonts.sora(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: const Color.fromRGBO(40, 155, 79, 1),
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: const Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Color.fromRGBO(83, 93, 102, 1),
                                size: 10,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavigator(),
    );
  }
}
