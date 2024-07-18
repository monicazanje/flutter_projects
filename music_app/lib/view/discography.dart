import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app/model/itemlist.dart';
import 'package:music_app/view/navigator.dart';
import 'package:music_app/view/productplayer.dart';
// import 'package:music_app/view/productplayer.dart';

class Discography extends StatefulWidget {
  final List<ItemList> discoList;

  const Discography({super.key, required this.discoList});
  @override
  State<Discography> createState() => _DiscographyState();
}

class _DiscographyState extends State<Discography> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 45, 45, 45),
      body: Container(
        margin: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
        child: GridView.builder(
          itemCount: widget.discoList.length,
          // padding: EdgeInsets.zero,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            childAspectRatio: 10 / 12,
          ),
          itemBuilder: (context, index) {
            final item = widget.discoList[index];
            return Container(
              decoration: const BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 34, 34, 34),
                ),
              ], borderRadius: BorderRadius.all(Radius.circular(30))),
              child: GestureDetector(
                onTap: () {},
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(
                          top: 20, bottom: 10, left: 15, right: 15),
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
                                    currentIndex: index,
                                    songList: widget.discoList),
                              ));
                        },
                        child: SizedBox(
                          height: 150,
                          width: 150,
                          child: Image.asset(
                            item.imageUrl,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      // height: double.infinity,
                      width: 100,
                      margin: const EdgeInsets.only(left: 15),
                      child: Text(
                        item.name,
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
                        item.year,
                        style: GoogleFonts.inter(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(134, 133, 133, 1),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: NavigatorScreen(
        favolist: widget.discoList,
      ),
    );
  }
}
