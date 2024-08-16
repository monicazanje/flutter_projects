import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallpaper_app/controller/productcontroller.dart';
import 'package:wallpaper_app/view/categoriesdetail.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});
  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  final categories = ProductController.getCategoriesList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 50),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 107, 107, 107),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            padding: const EdgeInsets.only(
              top: 20,
              bottom: 20,
            ),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    alignment: Alignment.center,
                    child: Text(
                      "HOME",
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    alignment: Alignment.center,
                    child: Text(
                      "CATEGORIES",
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
          Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return DetailScreen(
                                category: categories[index].catname,
                                currentindex: index,
                              );
                            },
                          ),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 10),
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 10,
                                  spreadRadius: 5,
                                  color: Colors.black.withOpacity(1),
                                  offset: const Offset(10, 4))
                            ]),
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.all(5),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.network(
                                  categories[index].catimg,
                                  height: 80,
                                  width: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const Spacer(
                              flex: 1,
                            ),
                            Container(
                              child: Text(
                                categories[index].catname,
                                style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const Spacer(
                              flex: 1,
                            ),
                          ],
                        ),
                      ),
                    );
                  })),
        ],
      ),
    );
  }
}
