import 'package:fashion_app/view/details.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomedingState();
}

class Data {
  final double price;
  final String img;
  final String name;
  Data({required this.img, required this.name, required this.price});
}

class _HomedingState extends State<Home> {
  int currentindex = 0;
  List image = [
    Data(img: "assets/Rectangle 980.png", name: "Leather Coart", price: 257.30),
    Data(
        img: "assets/Rectangle 981 (1).png",
        name: "Tagerine Shirt",
        price: 240.32),
    Data(
        img: "assets/Rectangle 981.png", name: "Tagerine Shirt", price: 126.73),
    Data(
        img: "assets/Rectangle 980 (1).png",
        name: "Leather Coart",
        price: 257.80),
    Data(img: "assets/Rectangle 980.png", name: "Leather Coart", price: 257.30),
    Data(
        img: "assets/Rectangle 981 (1).png",
        name: "Tagerine Shirt",
        price: 240.32),
    Data(
        img: "assets/Rectangle 981.png", name: "Tagerine Shirt", price: 126.73),
    Data(
        img: "assets/Rectangle 980 (1).png",
        name: "Leather Coart",
        price: 257.80),
    Data(img: "assets/Rectangle 980.png", name: "Leather Coart", price: 257.30),
    Data(
        img: "assets/Rectangle 981 (1).png",
        name: "Tagerine Shirt",
        price: 240.32),
    Data(
        img: "assets/Rectangle 981.png", name: "Tagerine Shirt", price: 126.73),
    Data(
        img: "assets/Rectangle 980 (1).png",
        name: "Leather Coart",
        price: 257.80),
  ];
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
            Container(
              margin: const EdgeInsets.only(
                  left: 20, right: 20, top: 20, bottom: 20),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.only(
                          left: 18, right: 18, top: 8, bottom: 8),
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(255, 122, 0, 1),
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        "All",
                        style: GoogleFonts.imprima(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.only(
                          left: 18, right: 18, top: 8, bottom: 8),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        "Men",
                        style: GoogleFonts.imprima(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.only(
                          left: 18, right: 18, top: 8, bottom: 8),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        "Women",
                        style: GoogleFonts.imprima(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.only(
                          left: 18, right: 18, top: 8, bottom: 8),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        "Kids",
                        style: GoogleFonts.imprima(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.only(
                          left: 18, right: 18, top: 8, bottom: 8),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        "Others",
                        style: GoogleFonts.imprima(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 3 / 4,
                      mainAxisSpacing: 4,
                      crossAxisSpacing: 4),
                  scrollDirection: Axis.vertical,
                  itemCount: image.length,
                  itemBuilder: (context, index) {
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
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                AspectRatio(
                                  aspectRatio: 0.9,
                                  child: Image.asset(
                                    image[index].img,
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
                                    " \$${image[index].price}",
                                    style: GoogleFonts.imprima(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black),
                                  ),
                                  Text(
                                    image[index].name,
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
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              currentindex = index;
            });
          },
          indicatorColor: Colors.white,
          selectedIndex: currentindex,
          destinations: const [
            NavigationDestination(
              selectedIcon: Icon(
                Icons.home,
                color: Colors.orange,
              ),
              icon: Icon(
                Icons.home_outlined,
                color: Colors.black,
              ),
              label: 'home',
            ),
            NavigationDestination(
              selectedIcon: Icon(
                Icons.search,
                color: Colors.orange,
              ),
              icon: Icon(
                Icons.search_outlined,
                color: Colors.black,
              ),
              label: 'home',
            ),
            NavigationDestination(
              selectedIcon: Icon(
                Icons.shopping_bag,
                color: Colors.orange,
              ),
              icon: Icon(
                Icons.shopping_bag_outlined,
                color: Colors.black,
              ),
              label: 'home',
            ),
            NavigationDestination(
              selectedIcon: Icon(
                Icons.settings_outlined,
                color: Colors.orange,
              ),
              icon: Icon(
                Icons.settings,
                color: Colors.black,
              ),
              label: 'home',
            ),
          ],
        ));
  }
}
