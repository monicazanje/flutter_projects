import 'package:bicycle_app/view/producthome.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});
  @override
  State createState() => _StartPageState();
}

class _StartPageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.hardEdge,
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                transform: GradientRotation(20),
                stops: [0.5, 0.5],
                colors: [
                  Color.fromRGBO(34, 40, 52, 1),
                  Color.fromRGBO(75, 76, 237, 1),
                ],
              ),
            ),
            child: RotatedBox(
              quarterTurns: 1,
              child: Text(
                "EXTREME",
                textAlign: TextAlign.center,
                style: GoogleFonts.allertaStencil(
                  fontSize: 150,
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(255, 255, 255, 0.2),
                ),
              ),
            ),
          ),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.only(
                    top: 50, bottom: 50, left: 176, right: 176),
                child: Image.asset("assets/image 6 (1).png"),
              ),
              const Spacer(
                flex: 1,
              ),
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: Image.asset("assets/pngwing.png"),
              ),
              const SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const HomePage();
                      },
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.bottomRight,
                  margin: const EdgeInsets.only(bottom: 30, left: 178),
                  padding: const EdgeInsets.all(8),
                  height: 76,
                  width: 315,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      bottomLeft: Radius.circular(50),
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromRGBO(75, 76, 237, 1),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 5,
                              color: Colors.yellowAccent,
                              spreadRadius: 5,
                              blurStyle: BlurStyle.normal,
                            ),
                          ],
                        ),
                        child: const Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          top: 11,
                          bottom: 11,
                        ),
                        child: Text(
                          "Get Start",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
