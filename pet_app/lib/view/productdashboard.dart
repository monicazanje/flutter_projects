import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_app/view/productgrooming.dart';
import 'package:pet_app/view/productnotification.dart';
import 'package:pet_app/view/productshop.dart';
import 'package:pet_app/view/producttraning.dart';
import 'package:pet_app/view/productvaternary.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});
  @override
  State createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 252, 251, 251),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(left: 24, right: 24, top: 60),
          child: Column(
            children: [
              SizedBox(
                child: Row(
                  children: [
                    Container(
                      height: 56,
                      width: 56,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("assets/image.png"),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hello, Sarah",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(0, 0, 0, 1),
                            ),
                          ),
                          Text(
                            "Good Morning!",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(0, 0, 0, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NotificationPage(),
                          ),
                        );
                      },
                      child: const Icon(
                        Icons.notifications_outlined,
                        size: 24,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 23,
              ),
              Container(
                padding: const EdgeInsets.only(
                    left: 16, top: 11, bottom: 11, right: 16),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromRGBO(245, 146, 69, 1),
                      style: BorderStyle.solid,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: Row(
                  children: [
                    SizedBox(
                      child: Text(
                        "search",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(0, 0, 0, 1),
                        ),
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    const Icon(
                      Icons.search,
                      size: 24,
                      color: Color.fromRGBO(245, 146, 69, 1),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 16,
                      spreadRadius: 5,
                      offset: Offset(0, 8),
                      color: Color.fromRGBO(22, 34, 51, 0.08),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      padding:
                          const EdgeInsets.only(top: 16, bottom: 16, left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "In Love With Pets?",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(0, 0, 0, 1),
                            ),
                          ),
                          Text(
                            "Get all what you need for them",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(245, 146, 69, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(right: 5, top: 16),
                      child: Image.asset('assets/image (20).png',
                          fit: BoxFit.cover),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Text(
                      "Category",
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(0, 0, 0, 1),
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "See All",
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromARGB(194, 62, 76, 43),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const VaternaryScreen(),
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          Container(
                            decoration:
                                const BoxDecoration(shape: BoxShape.circle),
                            child: Image.asset('assets/image (1).png'),
                          ),
                          Text(
                            "Veterinary",
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(0, 0, 0, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const GroomingScreen(),
                          ),
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration:
                                const BoxDecoration(shape: BoxShape.circle),
                            child: Image.asset('assets/image (2).png'),
                          ),
                          Text(
                            "Grooming",
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(0, 0, 0, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ShopScreen(),
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          Container(
                            decoration:
                                const BoxDecoration(shape: BoxShape.circle),
                            child: Image.asset('assets/image (3).png'),
                          ),
                          Text(
                            "Pet Store",
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(0, 0, 0, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const TraningScreen(),
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          Container(
                            decoration:
                                const BoxDecoration(shape: BoxShape.circle),
                            child: Image.asset('assets/image (4).png'),
                          ),
                          Text(
                            "Training",
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(0, 0, 0, 1),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Event",
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(0, 0, 0, 1),
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 16,
                      spreadRadius: 5,
                      offset: Offset(0, 8),
                      color: Color.fromRGBO(22, 34, 51, 0.08),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(
                          left: 16, right: 8, top: 16, bottom: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 60,
                            width: 191,
                            padding: const EdgeInsets.only(right: 8),
                            alignment: Alignment.center,
                            child: Text(
                              "Find and Join in Special Events For Your Pets!",
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(0, 0, 0, 1),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 14,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: 89,
                              height: 34,
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(245, 146, 69, 1),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  "See More",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color:
                                        const Color.fromRGBO(255, 255, 255, 1),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 16),
                      child: Image.asset('assets/image (5).png',
                          fit: BoxFit.cover),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.all(10),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Community",
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(0, 0, 0, 1),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 16,
                      spreadRadius: 5,
                      offset: Offset(0, 8),
                      color: Color.fromRGBO(22, 34, 51, 0.08),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(
                          left: 16, right: 8, top: 16, bottom: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 60,
                            width: 191,
                            padding: const EdgeInsets.only(right: 8),
                            alignment: Alignment.center,
                            child: Text(
                              "Connect and share with communities! ",
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(0, 0, 0, 1),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 14,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: 89,
                              height: 34,
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(245, 146, 69, 1),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  "See More",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color:
                                        const Color.fromRGBO(255, 255, 255, 1),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 16),
                      child: Image.asset('assets/image (5).png',
                          fit: BoxFit.cover),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: Color.fromRGBO(126, 128, 143, 1),
                size: 30,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border,
                color: Color.fromRGBO(126, 128, 143, 1),
                size: 30,
              ),
              label: "Service"),
          // BottomNavigationBarItem(
          //     activeIcon: Container(
          //       margin: EdgeInsets.all(20),
          //       height: 66,
          //       width: 66,
          //       decoration: const BoxDecoration(shape: BoxShape.circle),
          //       //color: const Color.fromRGBO(245, 146, 69, 1),
          //     ),
          //     icon: const Icon(
          //       Icons.shopping_cart_outlined,
          //       color: Color.fromRGBO(126, 128, 143, 1),
          //       size: 30,
          //     ),
          //     label: "Shop"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.watch_later_outlined,
                color: Color.fromRGBO(126, 128, 143, 1),
                size: 30,
              ),
              label: "History"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
                color: Color.fromRGBO(126, 128, 143, 1),
                size: 30,
              ),
              label: "Profile"),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: const CircleBorder(),
        backgroundColor: const Color.fromRGBO(245, 146, 69, 1),
        child: Container(
            padding: const EdgeInsets.all(5),
            child: Column(
              children: [
                const Icon(
                  Icons.shopping_cart_outlined,
                  size: 24,
                  color: Colors.white,
                ),
                Text(
                  "Shop",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
