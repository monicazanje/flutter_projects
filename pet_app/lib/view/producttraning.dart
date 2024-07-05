import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TraningScreen extends StatefulWidget {
  const TraningScreen({super.key});
  @override
  State createState() => _TraningScreenState();
}

class _TraningScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 55, bottom: 20),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      height: 24,
                      width: 24,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(245, 146, 69, 1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      child: const Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                        size: 16,
                      ),
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Text(
                    "Training",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(31, 32, 41, 1),
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  )
                ],
              ),
            ),
            Expanded(
              child: SizedBox(
                child: ListView.builder(itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.all(8),
                    margin: const EdgeInsets.only(bottom: 30),
                    width: MediaQuery.of(context).size.width * 0.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 16,
                            spreadRadius: -4,
                            offset: Offset(0, 8),
                            color: Color.fromRGBO(22, 34, 51, 0.08)),
                      ],
                      color: const Color.fromRGBO(255, 255, 255, 1),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.1,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/image.png"),
                                fit: BoxFit.fill),
                            // border: Border.all(style: BorderStyle.solid),
                          ),
                          child: Image.asset("assets/fi_play-circle.png"),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          margin: const EdgeInsets.all(5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Obedience Courses",
                                style: GoogleFonts.inter(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(0, 0, 0, 1),
                                ),
                              ),
                              Text(
                                "By Jhon Smith",
                                style: GoogleFonts.inter(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(0, 0, 0, 1),
                                ),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.star_border,
                                    color: Color.fromRGBO(245, 146, 69, 1),
                                    size: 16,
                                  ),
                                  Text(
                                    "4.9 (335)",
                                    style: GoogleFonts.inter(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: const Color.fromRGBO(0, 0, 0, 1),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
