import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app/model/cursormodel.dart';
import 'package:music_app/view/discography.dart';
// import 'package:music_app/view/navigator.dart';
import 'package:music_app/view/productplayer.dart';
import 'package:music_app/view/singles.dart';
import 'package:music_app/model/itemlist.dart';

class Gallery extends StatefulWidget {
  const Gallery({super.key});
  @override
  State createState() => _GalleryState();
}

int currentindex = 0;

class _GalleryState extends State {
  List<ItemList> songs = ItemList.songsList;
  List<ItemList> popularsong = ItemList.popularlist;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider.builder(
              itemCount: cursorList.length,
              itemBuilder: (context, index, realindex) {
                final imageurl = cursorList[index];
                return Stack(
                  children: [
                    
                    Positioned(
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("${imageurl.curseImage}"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 100,
                      left: 30,
                      child: Text(
                        '${imageurl.curseName}',
                        style: GoogleFonts.inter(
                            fontSize: 36,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(255, 255, 255, 1)),
                      ),
                    ),
                    Positioned(
                      bottom: 50,
                      left: 30,
                      child: Container(
                        padding: const EdgeInsets.only(
                            top: 10, bottom: 10, left: 20, right: 20),
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(255, 46, 0, 1),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Gallery(),
                                ));
                          },
                          child: Text(
                            "Subscribe",
                            style: GoogleFonts.inter(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromARGB(255, 0, 0, 0)),
                          ),
                        ),
                      ),
                    )
                  ],
                );
              },
              options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 10 / 9,
                  viewportFraction: 1,
                  initialPage: 0,
                  autoPlayAnimationDuration: const Duration(seconds: 2),
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentindex = index;
                    });
                  }),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < 3; i++)
                  currentindex == i
                      ? Container(
                          height: 7,
                          width: 21,
                          margin: const EdgeInsets.all(5),
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              color: Color.fromRGBO(255, 61, 0, 1)),
                        )
                      : Container(
                          height: 7,
                          width: 7,
                          margin: const EdgeInsets.all(2),
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              color: Color.fromRGBO(159, 159, 159, 1)),
                        ),
              ],
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Text(
                    "Discography",
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(255, 61, 0, 1),
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Discography(discoList: songs);
                      }));
                    },
                    child: Text(
                      "See all",
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromARGB(248, 228, 184, 24),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                itemCount: songs.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                            top: 10, bottom: 10, left: 15, right: 15),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Player(
                                      initialindex: index, songList: songs),
                                ));
                          },
                          child: SizedBox(
                            height: 100,
                            width: 100,
                            child: Image.asset(
                              songs[index].imageUrl,
                              fit: BoxFit.fill,
                              // scale: 4,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 15),
                        child: Text(
                          songs[index].name,
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 15),
                        child: Text(
                          songs[index].year,
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(134, 133, 133, 1),
                          ),
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 15, right: 15, top: 10),
              child: Row(
                children: [
                  Text(
                    "Popular singles",
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(203, 200, 200, 1),
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
                          builder: (context) {
                            return Singles(singleList: popularsong);
                          },
                        ),
                      );
                    },
                    child: Text(
                      "See all",
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromARGB(248, 228, 184, 24),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              child: ListView.builder(
                  itemCount: 3,
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Player(
                                  initialindex: index, songList: popularsong);
                            },
                          ),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.only(
                            left: 15, right: 15, bottom: 15),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: SizedBox(
                                height: 70,
                                width: 70,
                                child: Image.asset(
                                  popularsong[index].imageUrl,
                                  fit: BoxFit.fill,
                                  scale: 4,
                                ),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(left: 15),
                                  child: Text(
                                    popularsong[index].name,
                                    style: GoogleFonts.inter(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: const Color.fromRGBO(
                                          203, 200, 200, 1),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      left: 15, right: 15),
                                  child: Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: popularsong[index].year,
                                          style: GoogleFonts.inter(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: const Color.fromRGBO(
                                                134, 133, 133, 1),
                                          ),
                                        ),
                                        TextSpan(
                                          text: " * ",
                                          style: GoogleFonts.inter(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: const Color.fromRGBO(
                                                134, 133, 133, 1),
                                          ),
                                        ),
                                        TextSpan(
                                          text: popularsong[index].description,
                                          style: GoogleFonts.inter(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: const Color.fromRGBO(
                                                134, 133, 133, 1),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(
                              flex: 1,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                padding: const EdgeInsets.all(15),
                                child: Column(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(top: 5),
                                      height: 5,
                                      width: 5,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color.fromRGBO(203, 200, 200, 1),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 5),
                                      height: 5,
                                      width: 5,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color.fromRGBO(203, 200, 200, 1),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 5),
                                      height: 5,
                                      width: 5,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color.fromRGBO(203, 200, 200, 1),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
      // bottomNavigationBar: NavigatorScreen(
      //   favolist: songs,
      // ),
    );
  }
}
