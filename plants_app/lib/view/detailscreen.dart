import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plants_app/model/plantsmodel.dart';
import 'package:plants_app/view/productaddtocart.dart';
import 'package:provider/provider.dart';
import 'package:plants_app/controller/productcontroller.dart';


class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});
  @override
  State createState() => _DetailScreenState();
}

class _DetailScreenState extends State {
  
  void addPlantToList(Plant plant) {
  plantlist.add(plant);
}
  Widget build(BuildContext context) {
    var productdetail = Provider.of<ProductController>(context, listen: false);

    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 242, 241, 241),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(
              flex: 1,
            ),
            Container(
              width: MediaQuery.of(context).size.width*0.8,
              height: MediaQuery.of(context).size.height*0.45,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(
                  top: 10, bottom: 20, left: 40, right: 40),
                  decoration: BoxDecoration(border: Border.all(style: BorderStyle.solid,color: Colors.grey),),
              child:Image.asset("assets/zamia green.jpeg",fit: BoxFit.fill,)
              
            ),
            Container(
              margin: const EdgeInsets.only(
                  left: 30, right: 30, top: 10, bottom: 10),
              child: Text(
                "Snake Plants",
                style: GoogleFonts.dmSans(
                    fontSize: 22, fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                  top: 10, left: 30, right: 20, bottom: 20),
              child: Text(
                "Plansts make your life with minimal and happy love the plants more and enjoy life",
                style: GoogleFonts.dmSans(
                    fontSize: 13, fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.only(
                  top: 20, bottom: 20, left: 10, right: 10),
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(118, 152, 75, 1),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(
                            top: 20, bottom: 20, left: 10, right: 10),
                        child: Column(
                          children: [
                            Image.asset("assets/Group 5470.png",
                                color: Colors.white),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Height",
                              style: GoogleFonts.dmSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                            Text(
                              "30cm-40cm",
                              style: GoogleFonts.dmSans(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(
                        flex: 1,
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                            top: 20, bottom: 20, left: 10, right: 10),
                        child: Column(
                          children: [
                            Image.asset("assets/thermometer.png",
                                color: Colors.white),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Temperature",
                              style: GoogleFonts.dmSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                            Text(
                              "20’C-25’",
                              style: GoogleFonts.dmSans(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(
                        flex: 1,
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                            top: 20, bottom: 20, left: 10, right: 10),
                        child: Column(
                          children: [
                            Image.asset("assets/Vector (11).png",
                                color: Colors.white),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Pot",
                              style: GoogleFonts.dmSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                            Text(
                              "Ciramic Pot",
                              style: GoogleFonts.dmSans(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Spacer(
                        flex: 1,
                      ),
                      Column(
                        children: [
                          Text(
                            "Total Price",
                            style: GoogleFonts.dmSans(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                          Text(
                            "₹ 350",
                            style: GoogleFonts.dmSans(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      const Spacer(
                        flex: 4,
                      ),
                      GestureDetector(
                        onTap: () {
                          final Plant plants = Plant(
                              mobileno: 1234567890,
                              plantname: "Snake Plants",
                              price: 350,
                              img: "assets/zamia green.jpeg"
                              );
                          addPlantToList(plants);

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AddToCart(),
                            ),
                          );
                        },
                        child: Container(
                          height: 50,
                          width: 150,
                          decoration: const BoxDecoration(
                              color: Color.fromRGBO(103, 133, 74, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/shopping-bag.png",
                                  color: Colors.white),
                              Text(
                                "   Add to cart",
                                style: GoogleFonts.dmSans(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Spacer(
                        flex: 1,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }
}
