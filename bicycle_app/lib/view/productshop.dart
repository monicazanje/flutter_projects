import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});
  @override
  State createState() => _ShopPageState();
}

class _ShopPageState extends State {
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
                  Color.fromRGBO(30, 30, 30, 1),
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
                margin: const EdgeInsets.only(
                    left: 20, right: 20, top: 50, bottom: 10),
                child: Row(
                  children: [
                    Container(
                      width: 300,
                      height: 85,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "My Shopping Cart",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.poppins(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Color.fromARGB(255, 76, 167, 247),
                            Color.fromRGBO(75, 76, 237, 1),
                          ], stops: [
                            0.0,
                            1.0
                          ], transform: GradientRotation(70)),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          color: Color.fromRGBO(75, 76, 237, 1),
                        ),
                        child: const Icon(
                          Icons.arrow_back_ios_new,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              shopdata(),
              const Divider(),
              shopdata(),
              const Divider(),
              shopdata(),
              const Divider(),
              Text(
                "Your Bag Qualifies for Free Shipping",
                textAlign: TextAlign.start,
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                    left: 20, right: 20, top: 16, bottom: 16),
                padding: const EdgeInsets.all(5),
                color: const Color.fromRGBO(34, 44, 59, 0.6),
                child: Row(
                  children: [
                    Text(
                      "6Affg5",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.poppins(
                        fontSize: 22,
                        fontWeight: FontWeight.w300,
                        color: Color.fromRGBO(142, 142, 142, 1),
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.only(
                            left: 30, right: 30, top: 5, bottom: 5),
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(255, 76, 167, 247),
                                Color.fromRGBO(75, 76, 237, 1),
                              ],
                              stops: [0.0, 1.0],
                              transform: GradientRotation(70),
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Text(
                          "Apply",
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 20, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Subtotal",
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Delivery fee",
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Delivery fee",
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Total",
                          style: GoogleFonts.poppins(
                            fontSize: 20,
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
                  Container(
                    margin:
                        const EdgeInsets.only(left: 20, bottom: 10, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "2,841.99",
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.blue,
                          ),
                        ),
                        Text(
                          "0",
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.blue,
                          ),
                        ),
                        Text(
                          "30 %",
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.blue,
                          ),
                        ),
                        Text(
                          "1,989.37",
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const Spacer(
                flex: 1,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 25,
                      width: 25,
                      color: Colors.blue,
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Check Out",
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget shopdata() {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 10),
      // decoration: BoxDecoration(
      //     border: Border.all(style: BorderStyle.solid, color: Colors.white)),
      child: Row(
        children: [
          Container(
            height: 92,
            width: 100,
            margin:
                const EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                transform: GradientRotation(20),
                stops: [0.5, 1.0],
                colors: [
                  Color.fromRGBO(53, 63, 84, 0.6),
                  Color.fromRGBO(34, 40, 52, 0),
                ],
              ),
              border: Border.all(
                style: BorderStyle.solid,
                color: const Color.fromARGB(255, 86, 86, 86),
              ),
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.25),
                  blurRadius: 10,
                  spreadRadius: 1,
                  offset: Offset(10, 1),
                ),
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.25),
                  blurRadius: 5,
                  spreadRadius: 0,
                  offset: Offset(6, 6),
                ),
              ],
            ),
            child: Image.asset(
              "assets/pngwing (3).png",
              scale: 1,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 14, right: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  children: [
                    Text(
                      "GT BIKE",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.poppins(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "2,599.99",
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 50,
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  alignment: Alignment.bottomRight,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 20,
                          width: 23,
                          color: Colors.blue,
                          child: const Icon(
                            Icons.add,
                            size: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "1",
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 20,
                          width: 23,
                          color: Colors.black,
                          child: const Icon(
                            Icons.remove,
                            size: 15,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
