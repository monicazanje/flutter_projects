import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashBord extends StatefulWidget {
  const DashBord({super.key});
  @override
  State<DashBord> createState() => _DashBordState();
}

class _DashBordState extends State<DashBord> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pet App",
          style: GoogleFonts.inter(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: const Color.fromARGB(255, 16, 86, 144),
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 16, 86, 144),
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Category :",
                  style: GoogleFonts.inter(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
              StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance
                    .collection("category")
                    .snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.active) {
                    if (snapshot.hasData && snapshot.data != null) {
                      return Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(right: 10),
                          child: ListView.builder(
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.horizontal,
                            itemCount: snapshot.data!.docs.length,
                            itemBuilder: (context, index) {
                              Map<String, dynamic> studentmap =
                                  snapshot.data!.docs[index].data()
                                      as Map<String, dynamic>;
                              return Container(
                                margin:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 100,
                                      width: 100,
                                      margin: const EdgeInsets.only(top: 10),
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle),
                                      child: Image.network(studentmap['image'],
                                          fit: BoxFit.fill),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      studentmap['name'],
                                      style: GoogleFonts.sora(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      );
                    } else {
                      return const Text("No Data");
                    }
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, bottom: 10),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Best Specialists Nearby :",
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
              StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance
                    .collection("doctors")
                    .snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.active) {
                    if (snapshot.hasData && snapshot.data != null) {
                      return Expanded(
                        child: SizedBox(
                          child: ListView.builder(
                              padding: EdgeInsets.zero,
                              scrollDirection: Axis.vertical,
                              itemCount: snapshot.data!.docs.length,
                              itemBuilder: (context, index) {
                                Map<String, dynamic> doctmap =
                                    snapshot.data!.docs[index].data()
                                        as Map<String, dynamic>;
                                return GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                      padding: const EdgeInsets.all(5),
                                      margin: const EdgeInsets.only(bottom: 16),
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)),
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 16,
                                            spreadRadius: 5,
                                            offset: Offset(0, 8),
                                            color: Color.fromRGBO(
                                                22, 34, 51, 0.08),
                                          ),
                                        ],
                                      ),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            height: 120,
                                            width: 120,
                                            child: Image.network(
                                              doctmap['img'],
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.all(5),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  doctmap['name'],
                                                  style: GoogleFonts.inter(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                    color: const Color.fromRGBO(
                                                        0, 0, 0, 1),
                                                  ),
                                                ),
                                                Text(
                                                  doctmap['post'],
                                                  style: GoogleFonts.inter(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    color: const Color.fromRGBO(
                                                        0, 0, 0, 1),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 16,
                                                ),
                                                Row(
                                                  children: [
                                                    const Icon(
                                                      Icons.star_border,
                                                      color: Color.fromRGBO(
                                                          245, 146, 69, 1),
                                                      size: 16,
                                                    ),
                                                    Text(
                                                      "4.8",
                                                      style: GoogleFonts.inter(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: const Color
                                                            .fromRGBO(
                                                            0, 0, 0, 1),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 16,
                                                    ),
                                                    const Icon(
                                                      Icons
                                                          .location_on_outlined,
                                                      color: Color.fromRGBO(
                                                          245, 146, 69, 1),
                                                      size: 16,
                                                    ),
                                                    Text(
                                                      " 1 km",
                                                      style: GoogleFonts.inter(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: const Color
                                                            .fromRGBO(
                                                            0, 0, 0, 1),
                                                      ),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      )),
                                );
                              }),
                        ),
                      );
                    } else {
                      return const Text("No Data");
                    }
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
              Container(
                margin: const EdgeInsets.only(top: 20, left: 20),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Grooming :",
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
              StreamBuilder<QuerySnapshot>(
                  stream:
                      FirebaseFirestore.instance.collection("care").snapshots(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.active) {
                      if (snapshot.hasData && snapshot.data != null) {
                        return Expanded(
                          child: GridView.builder(
                              padding: EdgeInsets.zero,
                              itemCount: snapshot.data!.docs.length,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2),
                              itemBuilder: (context, index) {
                                Map<String, dynamic> caremap =
                                    snapshot.data!.docs[index].data()
                                        as Map<String, dynamic>;
                                return GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.5,
                                    padding: const EdgeInsets.only(
                                      top: 16,
                                      left: 16,
                                      right: 16,
                                    ),
                                    margin: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                      boxShadow: const [
                                        BoxShadow(
                                          blurRadius: 16,
                                          spreadRadius: 5,
                                          offset: Offset(0, 8),
                                          color:
                                              Color.fromRGBO(22, 34, 51, 0.08),
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      children: [
                                        Image.network(
                                          caremap['imgs'],
                                          fit: BoxFit.cover,
                                          scale: 1,
                                        ),
                                        const Spacer(
                                          flex: 1,
                                        ),
                                        Text(
                                          caremap['care'],
                                          style: GoogleFonts.poppins(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }),
                        );
                      } else {
                        return const Text("No Data");
                      }
                    } else {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  }),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          NavigationDestination(icon: Icon(Icons.shopping_bag), label: "Order"),
          NavigationDestination(icon: Icon(Icons.person), label: "Profile")
        ],
      ),
    );
  }
}
