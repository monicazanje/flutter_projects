import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallpaper_app/controller/productcontroller.dart';
import 'package:wallpaper_app/view/fullscreen.dart';

class DetailScreen extends StatefulWidget {
  final String category;
  final int currentindex;

  const DetailScreen({super.key, required this.category,required this.currentindex});
  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  late Future<List<String>> imagefuture;
  final index=widget.currentindex;
  @override
  void initState() {
    super.initState();
    imagefuture = ProductController.fetchImages(widget.category);
  }

  final categories = ProductController.getCategoriesList();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width * 1,
            decoration:  BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  categories[index].catimg,
                ),
                fit: BoxFit.fill,
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 150,
                  top: 100,
                  child: Container(
                    height: 50,
                    width: 140,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.black38),
                  ),
                ),
                Positioned(
                  // right: 200,
                  left: 150,
                  top: 100,
                  child: Text(
                    categories[index].catname,
                    style: GoogleFonts.poppins(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          // Expanded(
          //   child: SizedBox(
          //       child: GridView.builder(
          //     itemCount: 10,
          //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //         crossAxisCount: 2,
          //         crossAxisSpacing: 3,
          //         childAspectRatio: 2 / 3,
          //         mainAxisSpacing: 3),
          //     itemBuilder: (context, index) {
          //       return GestureDetector(
          //         onTap: () {
          //           Navigator.push(context,
          //               MaterialPageRoute(builder: (context) {
          //             return const FullScreen(
          //               imgurl:
          //                   "https://img.freepik.com/free-photo/black-woman-trendy-grey-leather-jacket-posing-beige-background-studio-winter-autumn-fashion-look_273443-141.jpg",
          //             );
          //           }));
          //         },
          //         child: Container(
          //           color: Colors.white,
          //           child: Image.network(
          //             "https://animal-images-api.ashutoshswamy397.repl.co/cat",
          //             fit: BoxFit.cover,
          //           ),
          //         ),
          //       );
          //     },
          //   )),
          // ),
          Expanded(
            child: FutureBuilder<List<String>>(
              future: imagefuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return const Center(child: Text('Failed to load images'));
                } else {
                  List<String>? images = snapshot.data;
                  return GridView.builder(
                    itemCount: images!.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 3,
                      childAspectRatio: 2 / 3,
                      mainAxisSpacing: 3,
                    ),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return FullScreen(
                              imgurl: images[index],
                            );
                          }));
                        },
                        child: Container(
                          color: Colors.white,
                          child: Image.network(
                            images[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
