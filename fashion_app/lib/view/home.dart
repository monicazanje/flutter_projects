import 'package:fashion_app/model/fashionmodal.dart';
import 'package:fashion_app/view/details.dart';
import 'package:fashion_app/view/widgets/categories.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomedingState();
}


class _HomedingState extends State<Home> {
  int currentindex = 0;
  // List image = [
  //   Data(img: "assets/Rectangle 980.png", name: "Leather Coart", price: 257.30),
  //   Data(
  //       img: "assets/Rectangle 981 (1).png",
  //       name: "Tagerine Shirt",
  //       price: 240.32),
  //   Data(
  //       img: "assets/Rectangle 981.png", name: "Tagerine Shirt", price: 126.73),
  //   Data(
  //       img: "assets/Rectangle 980 (1).png",
  //       name: "Leather Coart",
  //       price: 257.80),
  //   Data(img: "assets/Rectangle 980.png", name: "Leather Coart", price: 257.30),
  //   Data(
  //       img: "assets/Rectangle 981 (1).png",
  //       name: "Tagerine Shirt",
  //       price: 240.32),
  //   Data(
  //       img: "assets/Rectangle 981.png", name: "Tagerine Shirt", price: 126.73),
  //   Data(
  //       img: "assets/Rectangle 980 (1).png",
  //       name: "Leather Coart",
  //       price: 257.80),
  //   Data(img: "assets/Rectangle 980.png", name: "Leather Coart", price: 257.30),
  //   Data(
  //       img: "assets/Rectangle 981 (1).png",
  //       name: "Tagerine Shirt",
  //       price: 240.32),
  //   Data(
  //       img: "assets/Rectangle 981.png", name: "Tagerine Shirt", price: 126.73),
  //   Data(
  //       img: "assets/Rectangle 980 (1).png",
  //       name: "Leather Coart",
  //       price: 257.80),
  // ];
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(
                  top: 50, left: 20, right: 20, bottom: 20),
              child: Row(
                children: [
                  SizedBox(
                    height: 30,
                    width: 30,
                    child: GestureDetector(
                      onTap: () {},
                      child: Image.asset("assets/Menu.png"),
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  SizedBox(
                    height: 30,
                    width: 30,
                    child: GestureDetector(
                      onTap: () {},
                      child: Image.asset("assets/Profile.png"),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
              child: Text(
                "Explore",
                style: GoogleFonts.imprima(
                    fontSize: 36,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
              child: Text(
                "Best trendy collection!",
                style: GoogleFonts.imprima(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    color: Colors.black),
              ),
            ),
            Categories(oncatselected: (index) {
              setState(() {
                currentindex = index;
              });
            },
            selectedIndex:currentindex,),
            
            Expanded(
              flex: 10,
              child: Container(
                margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: GridView.builder(
                  padding: EdgeInsets.zero,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 3 / 4,
                      mainAxisSpacing: 4,
                      crossAxisSpacing: 4),
                  scrollDirection: Axis.vertical,
                  itemCount: Categorymodel.catlist[currentindex].namelist.length,
                  
                  itemBuilder: (context, index) {
                    final item1=Categorymodel.catlist[currentindex].namelist;
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const Details();
                        }));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        // decoration: BoxDecoration(
                        //     border: Border.all(style: BorderStyle.solid)),
                        child: Column(
                          
                          children: [
                            Stack(
                              children: [
                                AspectRatio(
                                  aspectRatio: 0.9,
                                  child: Image.asset(
                                    item1[index].img,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                Positioned(
                                  bottom: -5,
                                  right: 30,
                                  child: Image.asset(
                                    "assets/Cart.png",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    " \$${item1[index].price}",
                                    style: GoogleFonts.imprima(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black),
                                  ),
                                  Text(
                                    item1[index].name,
                                    style: GoogleFonts.imprima(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
        );
  }
}
