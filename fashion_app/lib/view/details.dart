import 'package:fashion_app/view/cart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Details extends StatefulWidget {
  const Details({super.key});
  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin:
                const EdgeInsets.only(left: 20, right: 20, top: 50, bottom: 20),
            child: Row(
              children: [
                const Icon(
                  Icons.arrow_back_ios_new,
                ),
                const Spacer(
                  flex: 1,
                ),
                Text(
                  "Details",
                  style: GoogleFonts.imprima(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
                const Spacer(
                  flex: 1,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Image.asset("assets/Group 63.png"),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 30, right: 30),
            width: double.infinity,
            // decoration:
            //     BoxDecoration(border: Border.all(style: BorderStyle.solid)),
            child: Image.asset("assets/Rectangle 984.png", fit: BoxFit.fill),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20, left: 30, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 85,
                  width: 210,
                  // decoration: BoxDecoration(
                  //     border: Border.all(style: BorderStyle.solid)),
                  margin: const EdgeInsets.only(right: 30),
                  child: Text(
                    "Premium Tagerine Shirt",
                    style: GoogleFonts.imprima(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 24,
                  width: 24,
                  child: Image.asset("assets/Ellipse 14.png"),
                ),
                const SizedBox(
                  width: 8,
                ),
                SizedBox(
                  height: 24,
                  width: 24,
                  child: Image.asset("assets/Ellipse 15.png"),
                ),
                const SizedBox(
                  width: 8,
                ),
                SizedBox(
                  height: 24,
                  width: 24,
                  child: Image.asset("assets/Ellipse 16.png"),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              left: 30,
              top: 20,
            ),
            child: Text(
              "Size",
              style: GoogleFonts.imprima(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 30, left: 30),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 35,
                    width: 35,
                    alignment: Alignment.centerLeft,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Text(
                      "S",
                      style: GoogleFonts.imprima(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(121, 119, 128, 1),
                      ),
                    ),
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 35,
                    width: 35,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Text(
                      "M",
                      style: GoogleFonts.imprima(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(121, 119, 128, 1),
                      ),
                    ),
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 35,
                    width: 35,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: Colors.black,
                    ),
                    child: Text(
                      "L",
                      style: GoogleFonts.imprima(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 35,
                    width: 35,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Text(
                      "XL",
                      style: GoogleFonts.imprima(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(121, 119, 128, 1),
                      ),
                    ),
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 35,
                    width: 55,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      // border: Border.all(style: BorderStyle.solid),
                    ),
                    child: Text(
                      "XXL",
                      style: GoogleFonts.imprima(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(121, 119, 128, 1),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 30, right: 30, top: 50),
            child: Row(
              children: [
                Text(
                  "\$257.85",
                  style: GoogleFonts.imprima(
                    fontSize: 36,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                SizedBox(
                  height: 62,
                  width: 150,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const Cart();
                          },
                        ),
                      );
                    },
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Color.fromRGBO(255, 122, 0, 1),
                      ),
                    ),
                    child: Text(
                      "Add To Cart",
                      style: GoogleFonts.imprima(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
