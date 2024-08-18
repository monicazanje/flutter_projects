import 'dart:developer';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:google_fonts/google_fonts.dart';
import 'package:wallpaper_app/view/catrgories.dart';
import 'package:wallpaper_app/view/fullscreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State createState() => _HomeScreenState();
}

class _HomeScreenState extends State {
  List images = [];
  int page = 1;
  bool home = true;
  bool categories = false;
  @override
  void initState() {
    super.initState();
    fetchapi();
  }

  fetchapi() async {
    Uri url = Uri.parse("https://api.pexels.com/v1/curated?per_page=80");
    http.Response response = await http.get(
      url,
      headers: {
        'Authorization':
            'YCAOi5EDyJehI6DZTdlA8LXUgC37jxfndTMyezGIMN0uC8KiUOzIvo0R'
      },
    );
    log(response.body);
    Map responsedata = json.decode(response.body);

    setState(() {
      images = responsedata['photos'];
    });
    //print(images[0]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   actions: [],
        // ),
        backgroundColor: const Color.fromARGB(255, 4, 39, 68),
        body: Column(
          children: [
            Container(
              // margin: const EdgeInsets.only(top: 20),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 48, 48, 48),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
              padding: const EdgeInsets.only(
                top: 50,
                bottom: 20,
              ),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      home = true;
                      categories = false;
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      alignment: Alignment.center,
                      child: Text(
                        "HOME",
                        style: GoogleFonts.aclonica(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      home = false;
                      categories = true;
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const Categories();
                      }));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      alignment: Alignment.center,
                      child: Text(
                        "CATEGORIES",
                        style: GoogleFonts.aclonica(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SizedBox(
                  child: GridView.builder(
                itemCount: images.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  childAspectRatio: 2 / 3,
                  mainAxisSpacing: 20,
                ),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return FullScreen(
                            imgurl: images[index]['src']['large2x']);
                      }));
                    },
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                      child: Container(
                        color: Colors.white,
                        child: Image.network(
                          images[index]['src']['tiny'],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
              )),
            ),
            GestureDetector(
              onTap: () {
                loadmore();
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 5,
                          color: Colors.black.withOpacity(0.1),
                          offset: Offset(10, 4))
                    ]),
                child: Text(
                  "Load Mode",
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ));
  }

  // Widget showdata() {
  //   if (home == false) {

  //     return Expanded(
  //       child: SizedBox(
  //           child: GridView.builder(
  //         itemCount: images.length,
  //         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
  //             crossAxisCount: 3,
  //             crossAxisSpacing: 3,
  //             childAspectRatio: 2 / 3,
  //             mainAxisSpacing: 3),
  //         itemBuilder: (context, index) {
  //           return GestureDetector(
  //             onTap: () {
  //               Navigator.push(context, MaterialPageRoute(builder: (context) {
  //                 return FullScreen(imgurl: images[index]['src']['large2x']);
  //               }));
  //             },
  //             child: Container(
  //               color: Colors.white,
  //               child: Image.network(
  //                 images[index]['src']['tiny'],
  //                 fit: BoxFit.cover,
  //               ),
  //             ),
  //           );
  //         },
  //       )),
  //     );
  //   } else {
  //     return Expanded(
  //         child: ListView.builder(
  //             scrollDirection: Axis.vertical,
  //             itemCount: 6,
  //             itemBuilder: (context, index) {
  //               return Container(
  //                 height: 100,
  //                 width: double.infinity,
  //                 child: Row(
  //                   children: [
  //                     Container(
  //                       padding: const EdgeInsets.all(10),
  //                       height: 50,
  //                       width: 50,
  //                       decoration:
  //                           const BoxDecoration(shape: BoxShape.circle),
  //                       child: Image.asset("assets/Rectangle 989.png"),
  //                     ),
  //                     const SizedBox(
  //                       width: 30,
  //                     ),
  //                     Container(
  //                       height: 50,
  //                       width: 200,
  //                       child: Text(
  //                         "Person",
  //                         style: GoogleFonts.poppins(
  //                           fontSize: 20,
  //                           fontWeight: FontWeight.w600,
  //                           color: Colors.white,
  //                         ),
  //                       ),
  //                     )
  //                   ],
  //                 ),
  //               );
  //             }));
  //   }
  // }

  loadmore() async {
    setState(() {
      page = page + 1;
    });
    String url =
        "https://api.pexels.com/v1/curated?per_page=80&page=" + page.toString();
    await http.get(
      Uri.parse(url),
      headers: {
        'Authorization':
            'YCAOi5EDyJehI6DZTdlA8LXUgC37jxfndTMyezGIMN0uC8KiUOzIvo0R'
      },
    ).then((value) {
      Map result = jsonDecode(value.body);
      setState(() {
        images.addAll(result['photos']);
      });
    });
  }
}
