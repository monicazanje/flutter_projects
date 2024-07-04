import 'package:fashion_app/view/checkout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});
  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                  "Cart",
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
            alignment: Alignment.centerLeft,
            margin:
                const EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 20),
            child: Text(
              "My Orders",
              style: GoogleFonts.imprima(
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(left: 30, right: 30),
              height: MediaQuery.of(context).size.height * 0.5,
              width: double.infinity,
              child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Slidable(
                      closeOnScroll: true,
                      endActionPane: ActionPane(
                        motion: const DrawerMotion(),
                        extentRatio: 0.4,
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.all(10),
                                  padding: const EdgeInsets.only(
                                      top: 20, bottom: 20),
                                  decoration: const BoxDecoration(
                                    color: Color.fromRGBO(255, 122, 0, 1),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(50),
                                      bottomLeft: Radius.circular(50),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      GestureDetector(
                                        onTap: () {},
                                        child: const Icon(
                                          Icons.favorite_border_outlined,
                                          size: 25,
                                          color: Colors.white,
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {},
                                        child: Image.asset(
                                          "assets/trash.png",
                                          fit: BoxFit.fill,
                                          height: 20,
                                          width: 20,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 30),
                        // decoration: BoxDecoration(
                        //     border: Border.all(style: BorderStyle.solid)),
                        child: Row(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.2,
                              width: MediaQuery.of(context).size.width * 0.3,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/Rectangle 980 (1).png"),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 50,
                                  width: 150,
                                  child: Text(
                                    "Premium Tagerine Shirt",
                                    style: GoogleFonts.imprima(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                SizedBox(
                                  height: 60,
                                  width: 60,
                                  child: Text(
                                    "Yellow Size 8",
                                    style: GoogleFonts.imprima(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "\$257.85",
                                      style: GoogleFonts.imprima(
                                          fontSize: 34,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black),
                                    ),
                                    const SizedBox(
                                      width: 50,
                                    ),
                                    Text(
                                      "1x",
                                      style: GoogleFonts.imprima(
                                          fontSize: 34,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 40, right: 40),
            child: const Divider(
              color: Color.fromRGBO(193, 192, 192, 1),
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
                top: 20, bottom: 20, left: 100, right: 100),
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
                "Checkout Now",
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
