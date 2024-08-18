import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallpaper_app/controller/productcontroller.dart';
import 'package:wallpaper_app/view/fullscreen.dart';

class DetailScreen extends StatefulWidget {
  final String category;
  final int currentindex;

  const DetailScreen(
      {super.key, required this.category, required this.currentindex});
  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  late Future<List<String>> imagefuture;

  late int index;
  @override
  void initState() {
    super.initState();
    imagefuture = ProductController.fetchImages(widget.category);
    index = widget.currentindex;
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
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  categories[index].catimg,
                ),
                fit: BoxFit.fill,
              ),
            ),
            child: Container(
              margin: const EdgeInsets.only(
                  left: 100, right: 100, top: 70, bottom: 70),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color.fromRGBO(0, 0, 0, 0.6)),
              alignment: Alignment.center,
              child: Text(
                categories[index].catname,
                style: GoogleFonts.poppins(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
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
                      crossAxisCount: 3,
                      crossAxisSpacing: 15,
                      childAspectRatio: 2 / 3,
                      mainAxisSpacing: 40,
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
                        child: ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          child: Container(
                            color: Colors.white,
                            child: Image.network(
                              images[index],
                              fit: BoxFit.cover,
                            ),
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
