import 'package:flutter/material.dart';
import 'package:plants_app/controller/productcontroller.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plants_app/model/plantsqimodel.dart';

class AddToCart extends StatefulWidget {
  const AddToCart({super.key});
  @override
  State createState() => _AddToCartState();
}

class _AddToCartState extends State {
  @override
  // void initState() {
  //   super.initState();

  //   WidgetsBinding.instance.addPostFrameCallback((_) {
  //     Provider.of<ProductController>(context, listen: false).getOrderData();
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    var productdetail = Provider.of<ProductController>(context, listen: false);

    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 148, 190, 93),
          title: Text(
            "Add To Cart",
            style:
                GoogleFonts.dmSans(fontSize: 20, fontWeight: FontWeight.w700),
          ),
        ),
        body: Consumer<ProductController>(
          builder: (context, value, child) {
            return ListView.builder(
                itemCount: plantlist.length,
                itemBuilder: (context, index) {
                  Plant plant = plantlist[index];
                  return Container(
                    height: 100,
                    width: 100,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(style: BorderStyle.solid),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    margin: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Image.asset("assets/plant img2.png"),
                        const Spacer(
                          flex: 1,
                        ),
                        Text(
                          plant.plantname,
                          style: GoogleFonts.dmSans(
                              fontSize: 20, fontWeight: FontWeight.w700),
                        ),
                        const Spacer(
                          flex: 1,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Total Price",
                              style: GoogleFonts.dmSans(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "${plant.price}",
                              style: GoogleFonts.dmSans(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                padding: const EdgeInsets.all(5),
                                decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 67, 139, 241),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: Text(
                                  "Payment",
                                  style: GoogleFonts.dmSans(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  );
                });
          },
        ));
  }
}
