import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});
  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin:
                const EdgeInsets.only(left: 20, right: 20, top: 50, bottom: 20),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: const Icon(
                    Icons.arrow_back_ios_new,
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                Text(
                  "Checkout",
                  style: GoogleFonts.imprima(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
                const Spacer(
                  flex: 1,
                ),
              ],
            ),
          ),
          Container(
            margin:
                const EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Delivery Address",
                  style: GoogleFonts.imprima(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(121, 119, 128, 1),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      height: 45,
                      width: 45,
                      padding: const EdgeInsets.all(5),
                      child: Image.asset(
                        "assets/Rectangle 121.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20, right: 20),
                      height: 50,
                      width: 170,
                      child: Text(
                        "25/3 Housing Estate, Sylhet",
                        style: GoogleFonts.imprima(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    Text(
                      "Change",
                      style: GoogleFonts.imprima(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(121, 119, 128, 1),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 30, bottom: 20),
            child: Row(
              children: [
                const Icon(Icons.watch_later_outlined),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Delivered in next 7 days",
                  style: GoogleFonts.imprima(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
              ],
            ),
          ),
          Container(
            margin:
                const EdgeInsets.only(left: 30, bottom: 30, top: 30, right: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Payment Method",
                  style: GoogleFonts.imprima(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(121, 119, 128, 1),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset("assets/visa.png"),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset("assets/kio.png"),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset("assets/XMLID_328_.png"),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset("assets/Group 10.png"),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset("assets/Vector (13).png"),
                    )
                  ],
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(
                  left: 30, right: 30, top: 40, bottom: 40),
              child: Text(
                "Add Voucher",
                textAlign: TextAlign.center,
                style: GoogleFonts.imprima(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
            ),
          ),
          Container(
            margin:
                const EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 30),
            child: RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: "Note : ",
                  style: GoogleFonts.imprima(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.red),
                ),
                TextSpan(
                  text: "Use your order id at the payment. Your Id ",
                  style: GoogleFonts.imprima(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
                TextSpan(
                  text: "#154619",
                  style: GoogleFonts.imprima(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
                TextSpan(
                  text:
                      " if you forget to put your order id we can’t confirm the payment.",
                  style: GoogleFonts.imprima(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                )
              ]),
            ),
          ),
          Container(
            margin:
                const EdgeInsets.only(left: 30, right: 30, top: 20, bottom: 20),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total Items (6)",
                      style: GoogleFonts.imprima(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(121, 119, 128, 1),
                      ),
                    ),
                    Text(
                      "Standard Delivery",
                      style: GoogleFonts.imprima(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(121, 119, 128, 1),
                      ),
                    ),
                    Text(
                      "Total Payment",
                      style: GoogleFonts.imprima(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(121, 119, 128, 1),
                      ),
                    ),
                  ],
                ),
                const Spacer(
                  flex: 1,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "\$116.00",
                      style: GoogleFonts.imprima(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "\$12.00",
                      style: GoogleFonts.imprima(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "\$126.00",
                      style: GoogleFonts.imprima(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            height: 70,
            width: 190,
            margin: const EdgeInsets.only(
                top: 50, bottom: 20, left: 100, right: 100),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const Checkout();
                }));
              },
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                  Color.fromRGBO(255, 122, 0, 1),
                ),
              ),
              child: Text(
                "Pay Now",
                style: GoogleFonts.imprima(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
