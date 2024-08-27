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
  

   Future<void> fetchapi() async {
    Uri url = Uri.parse("https://api.pexels.com/v1/curated?page=10&per_page=40");
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
        body: Column(
      children: [
        Container(
          margin: const EdgeInsets.only(
            top: 30,
          ),
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
                  home = true;
                  categories = false;
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.45,
                  alignment: Alignment.center,
                  child: Text(
                    "HOME",
                    style: GoogleFonts.aclonica(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  home = false;
                  categories = true;
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
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
                        color: Colors.white),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return FullScreen(imgurl: images[index]['src']['large2x']);
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
            padding: const EdgeInsets.all(15),
            margin: const EdgeInsets.all(15),
            decoration: BoxDecoration(
                // color: const Color.fromARGB(255, 65, 64, 64),
                color: const Color.fromARGB(255, 65, 64, 64),
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 10,
                      spreadRadius: 2,
                      color: Colors.white.withOpacity(0.1),
                      offset: const Offset(5, 5))
                ]),
            child: Text(
              "Load Mode",
              style: GoogleFonts.aclonica(
                  fontSize: 13,
                  fontWeight: FontWeight.w300,
                  color: Colors.white),
            ),
          ),
        )
      ],
    ));
  }

  loadmore() async {
    setState(() {
      page = page + 1;
    });
    String url =
        "https://api.unsplash.com/photos/?client id=UA51nDU0yBQcjxXFsFRBoQjrg8oU4svIs8DyGi_oyX0" + page.toString();
    await http.get(
      Uri.parse(url),
      // headers: {
      //   'Authorization':
      //       'UA51nDU0yBQcjxXFsFRBoQjrg8oU4svIs8DyGi_oyX0'
      // },
    ).then((value) {
      Map result = jsonDecode(value.body);
      setState(() {
        images.addAll(result['photos']);
      });
    });
  }
}
